//
//  SettingsView.swift
//  FindTask
//
//  Created by Dixon Chu on 23/02/2022.
//

import SwiftUI
import Amplify

struct SettingsView: View {
    
    @EnvironmentObject var sessionManager : SessionManager
    var body: some View {
        Divider()
        Spacer()
        HStack(spacing: 15){
            Button(action: {sessionManager.signOut()}){
                Image(systemName: "rectangle.portrait.and.arrow.right")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 24, height: 24)
                    .foregroundColor(.black)
                
                Text("Sign Out")
                    .foregroundColor(.black)
                
            }
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
