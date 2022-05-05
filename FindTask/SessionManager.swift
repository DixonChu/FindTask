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
//    @Published var signUpShowAlert: Bool = false
//    @Published var signInShowAlert: Bool = false
//    @Published var showFailedCode: Bool = false
    @Published var alertMessage = ""
    
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
    
//    func signUp(givenName: String, familyName: String, phoneNumber: String, password: String)  throws {
//        let attributes = [AuthUserAttribute(.phoneNumber, value: phoneNumber), AuthUserAttribute(.familyName, value: familyName), AuthUserAttribute(.givenName, value: givenName)]
//        let options = AuthSignUpRequest.Options(userAttributes: attributes)
//
//        _ = Amplify.Auth.signUp(username: phoneNumber, password: password ,options: options)
//        {
//            [weak self] result in
//
//            switch result {
//
//            case .success(let signUpResult):
//                print("Sign up result: ", signUpResult)
//                switch signUpResult.nextStep {
//
//                case .done:
//                    print("Finished sign up")
//                case .confirmUser(let details, _):
//                    print(details ?? "no details")
//
//                    DispatchQueue.main.async {
//                        self?.authState = .confirmCode(phone: phoneNumber)
//                    }
//                }
//            case .failure(let error):
//                DispatchQueue.main.async {
//                    self?.signUpShowAlert = true
//                    self?.alertMessage = "\(error)"
//                }
//                print("Sign up error", error)
//            }
//        }
//    }
    
//    func confirm(phoneNumber: String, code: String) {
//        _ = Amplify.Auth.confirmSignUp(for: phoneNumber, confirmationCode: code)
//        {
//            [weak self] result in
//
//            switch result {
//            case .success(let confirmResult):
//                print(confirmResult)
//                if confirmResult.isSignupComplete {
//                    DispatchQueue.main.async {
//                        self?.showLogin()
//                    }
//                }
//
//            case .failure(let error):
//                DispatchQueue.main.async {
//                    self?.showFailedCode = true
//                }
//                print("failed to confirm code:", error)
//            }
//
//        }
//    }
    
//    func login(phoneNumber: String, password: String){
//        _ = Amplify.Auth.signIn(username: phoneNumber, password: password)
//        {
//            [weak self] result in
//
//            switch result {
//            case .success(let signInResult):
//                print(signInResult)
//                if signInResult.isSignedIn{
//                    DispatchQueue.main.async {
//                        self?.getCurrentAuthUser()
//                    }
//                }
//            case .failure(let error):
//                    DispatchQueue.main.async {
//                        self?.signInShowAlert = true
//                    }
//                print("Login error", error)
//            }
//        }
//    }
    
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
    
//    func updateAttribute(newPhoneNumber: String) {
//        Amplify.Auth.update(userAttribute: AuthUserAttribute(.phoneNumber, value: newPhoneNumber)) { result in
//            do {
//                let updateResult = try result.get()
//                switch updateResult.nextStep {
//                case .confirmAttributeWithCode(let deliveryDetails, let info):
//                    print("Confirm the attribute with details send to - \(deliveryDetails) \(info)")
//                case .done:
//                    print("Update completed")
//                }
//            } catch {
//                print("Update attribute failed with error \(error)")
//            }
//        }
//    }
//    
//    func confirmAttribute(code: String) {
//        Amplify.Auth.confirm(userAttribute: .phoneNumber, confirmationCode: code) { result in
//            switch result {
//            case .success:
//                print("Attribute verified")
//            case .failure(let error):
//                print("Update attribute failed with error \(error)")
//            }
//        }
//    }
    
    
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

