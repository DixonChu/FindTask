//
//  SessionManager.swift
//  FindTask
//
//  Created by Dixon Chu on 18/02/2022.
//

import Amplify
import Combine

enum AuthState {
    case signup
    case login
    case confirmCode(phone: String)
    case session(user: AuthUser)
}

final class SessionManager: ObservableObject {
    @Published var authState: AuthState = .login
    
    func getCurrentAuthUser() {
        if let user = Amplify.Auth.getCurrentUser() {
            authState = .session(user: user)
        } else {
            authState = .login
        }
    }
    
    func showSignUp() {
        authState = .signup
    }
    
    func showLogin() {
        authState = .login
    }
    
    func signUp(givenName: String, familyName: String, phoneNumber: String, password: String){
        let attributes = [AuthUserAttribute(.phoneNumber, value: phoneNumber), AuthUserAttribute(.familyName, value: familyName), AuthUserAttribute(.givenName, value: givenName)]
        let options = AuthSignUpRequest.Options(userAttributes: attributes)
        
        _ = Amplify.Auth.signUp(username: phoneNumber, password: password ,options: options)
        {
            [weak self] result in
            
            switch result {
                
            case .success(let signUpResult):
                print("Sign up result: ", signUpResult)
                switch signUpResult.nextStep {
                    
                case .done:
                    print("Finished sign up")
                    
                case .confirmUser(let details, _):
                    print(details ?? "no details")
                    
                    DispatchQueue.main.async {
                        self?.authState = .confirmCode(phone: phoneNumber)
                    }
                }
            case .failure(let error):
                print("Sign up error", error)
                
            }
        }
    }
    
    func confirm(phoneNumber: String, code: String) {
        _ = Amplify.Auth.confirmSignUp(for: phoneNumber, confirmationCode: code)
        {
            [weak self] result in
            
            switch result {
            case .success(let confirmResult):
                print(confirmResult)
                if confirmResult.isSignupComplete {
                    DispatchQueue.main.async {
                        self?.showLogin()
                    }
                }
                
            case .failure(let error):
                print("failed to confirm code:", error)
            }
            
        }
    }
    
    func login(phoneNumber: String, password: String){
        _ = Amplify.Auth.signIn(username: phoneNumber, password: password)
        {
            [weak self] result in
            
            switch result {
            case .success(let signInResult):
                print(signInResult)
                if signInResult.isSignedIn{
                    DispatchQueue.main.async {
                        self?.getCurrentAuthUser()
                    }
                }
                
            case .failure(let error):
                print("Login error", error)
            }
            
        }
    }
    
    func signOut(){
        _ = Amplify.Auth.signOut {
            [weak self] result in
            
            switch result {
            case .success:
                DispatchQueue.main.async {
                    self?.getCurrentAuthUser()
                }
            case .failure(let error):
                print("Sign out error:", error)
            }
        }
    }
    
}



