//
//  SettingView.swift
//  FindTask
//
//  Created by Dixon Chu on 14/03/2022.
//

import SwiftUI
import Amplify

struct SettingView: View {
    var body: some View {
        VStack{
            Divider()
            
        }
        
    }
}

struct SettingView_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    static var previews: some View {
        WorkView(user: DummyUser())
    }
}
