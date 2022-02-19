//
//  SessionView.swift
//  FindTask
//
//  Created by Dixon Chu on 18/02/2022.
//

import SwiftUI
import Amplify

struct SessionView: View {
    @EnvironmentObject var sessionManager : SessionManager
    
    let user: AuthUser
    
    var body: some View {
        VStack {
            Spacer()
            Text("You signed in using Amplify!!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            Button("Sign Out", action: {sessionManager.signOut()})
        }
    }
}

struct SessionView_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }

    static var previews: some View {
        SessionView(user: DummyUser())
    }
}
