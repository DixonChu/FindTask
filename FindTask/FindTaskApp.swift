//
//  FindTaskApp.swift
//  FindTask
//
//  Created by Dixon Chu on 05/02/2022.
//

import Amplify
import AmplifyPlugins
import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


@main
struct FindTaskApp: App {
    @ObservedObject var sessionManager = SessionManager()
    
    init(){
        configureAmplify()
        sessionManager.getCurrentAuthUser()
    }
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.authState {
            case .login:
//                WelcomeScreenContentView()
                LogInView()
                    .environmentObject(sessionManager)
            case .signup:
                SignUpView()
                    .environmentObject(sessionManager)
            case .confirmCode(let phoneNumber):
                ConfirmationView(phoneNum: phoneNumber)
                    .environmentObject(sessionManager)
            case .session(let user):
//                SessionView(user: user)
                BaseView(user: user)
                    .environmentObject(sessionManager)
            }

        }
    }
    
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Amplify congfigured successfully")
            
        }catch {
            print("Could not initialize Amplify", error)
        }
        
    }
}
