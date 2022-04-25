//
//  FindTaskApp.swift
//  FindTask
//
//  Created by Dixon Chu on 05/02/2022.
//

import Amplify
import AmplifyPlugins
import SwiftUI
import AWSLocation

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


@main
struct FindTaskApp: App {
    @ObservedObject var sessionManager = SessionManager()
    @ObservedObject var locationManager = LocationManager.shared
    
    public init(){
        configureAmplify()
        sessionManager.getCurrentAuthUser()
    }
    
    var body: some Scene {
        WindowGroup {
            if locationManager.userLocation == nil {
                LocationRequestView()
            } else {
                switch sessionManager.authState {
                case .login:
                    LogInView()
                        .environmentObject(sessionManager)
                        .environmentObject(Graphql())
                case .signup:
                    SignUpView()
                        .environmentObject(sessionManager)
                case .confirmCode(let phoneNumber):
                    ConfirmationView(phoneNum: phoneNumber)
                        .environmentObject(sessionManager)
                case .session(let user):
                    //                SessionView(user: user)
                    Home(user: user)
                        .environmentObject(Graphql())
                        .environmentObject(sessionManager)
                }
            }
        }
    }
    
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: AmplifyModels()))
            try Amplify.configure()
            
            #if DEBUG
            Amplify.Logging.logLevel = .debug
            #else
            Amplify.Logging.logLevel = .error
            #endif
            
            print("Amplify congfigured successfully")
            
        }catch {
            print("Could not initialize Amplify", error)
        }
        
    }
}
