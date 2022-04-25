//
//  SessionManager.swift
//  FindTask
//
//  Created by Dixon Chu on 18/02/2022.
//

import Amplify
import Combine
import AWSMobileClient
import Foundation

enum AuthState {
    case signup
    case login
    case confirmCode(phone: String)
    case session(user: AuthUser)
}

final class SessionManager: ObservableObject {
    @Published var authState: AuthState = .login
    @Published var phoneNumber: String = ""
    @Published var givenName: String = ""
    @Published var familyName: String = ""
    @Published var userID: String = ""
    
    func getCurrentAuthUser() {
        if let user = Amplify.Auth.getCurrentUser() {
            authState = .session(user: user)
            AWSMobileClient.default().getTokens{ [self](tokens, error) in
                if let error = error {
                    print("error \(error)")
                } else if let tokens = tokens {
                    let claims = tokens.idToken?.claims
                    DispatchQueue.main.async{
                        self.userID = claims?["cognito:username"] as! String
                        self.phoneNumber = claims?["phone_number"] as! String
                        self.familyName = claims?["family_name"] as! String
                        self.givenName = claims?["given_name"] as! String
                    }
                    
                }
            }
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
    
    // Get user attributes
    func fetchAttributes() {
        Amplify.Auth.fetchUserAttributes() { result in
            switch result {
            case .success(let attributes):
                print("User attributes - \(attributes)")
            case .failure(let error):
                print("Fetching user attributes failed with error \(error)")
            }
        }
    }
    
    func resetPassword(username: String) {
        Amplify.Auth.resetPassword(for: username) { result in
            do {
                let resetResult = try result.get()
                switch resetResult.nextStep {
                case .confirmResetPasswordWithCode(let deliveryDetails, let info):
                    print("Confirm reset password with code send to - \(deliveryDetails) \(String(describing: info))")
                case .done:
                    print("Reset completed")
                }
            } catch {
                print("Reset password failed with error \(error)")
            }
        }
    }
    
    func confirmResetPassword(
        username: String,
        newPassword: String,
        confirmationCode: String
    ) {
        Amplify.Auth.confirmResetPassword(
            for: username,
            with: newPassword,
            confirmationCode: confirmationCode
        ) { result in
            switch result {
            case .success:
                print("Password reset confirmed")
            case .failure(let error):
                print("Reset password failed with error \(error)")
            }
        }
    }
    
    func changePassword(oldPassword: String, newPassword: String) {
        Amplify.Auth.update(oldPassword: oldPassword, to: newPassword) { result in
            switch result {
            case .success:
                print("Change password succeeded")
            case .failure(let error):
                print("Change password failed with error \(error)")
            }
        }
    }
    
    func resendCode(phoneNumber: String) {
        Amplify.Auth.resendConfirmationCode(for: .phoneNumber) { result in
            switch result {
            case .success(let deliveryDetails):
                print("Resend code send to - \(deliveryDetails)")
            case .failure(let error):
                print("Resend code failed with error \(error)")
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

