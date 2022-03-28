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
        
        VStack{
            List{
                NavigationLink{
                    ChangePasswordView()
                        .navigationTitle("Change Password")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    Text("Change Password")
                }
                .padding([.bottom, .top], 12)
                
                NavigationLink{
                        PrivacyView()
                            .navigationTitle("Privacy")
                            .navigationBarTitleDisplayMode(.inline)
                }label: {
                    Text("Privacy")
                }
                .padding([.bottom, .top], 12)
                
                
                NavigationLink{
                    AboutView()
                        .navigationTitle("About")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    Text("About Find Task")
                }
                .padding([.bottom, .top], 12)
                
                
            }.listStyle(PlainListStyle())
            Spacer()
            HStack(spacing: 15){
                Button(action: {sessionManager.signOut()}){
                    Text("Sign Out")
                        .foregroundColor(.red)
                        .frame(width: 350, height: 40.0)
                }
                
            }
        }.foregroundColor(.primary)
    }
    
}



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
