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
    
    let user: AuthUser
    
    @State private var showingPopover = false
    
    var body: some View {
//        NavigationView{
            VStack(alignment: .leading, spacing: 12){
                Text("Settings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                List{
                    NavigationLink{
                        ChangePasswordView()
                            .navigationTitle("Change Password")
                            .navigationBarTitleDisplayMode(.inline)
                    }label: {
                        Image(systemName: "lock")
                        Text("Change Password")
                            .font(.system(size: 14))
                    }
                    .padding([.bottom, .top], 12)
                    
                    NavigationLink{
                        PrivacyView()
                            .navigationTitle("Privacy")
                            .navigationBarTitleDisplayMode(.inline)
                    }label: {
                        Image(systemName: "lock.shield")
                        Text("Privacy")
                            .font(.system(size: 14))
                    }
                    .padding([.bottom, .top], 12)
                    
                    
                    NavigationLink{
                        AboutView()
                            .navigationTitle("About")
                            .navigationBarTitleDisplayMode(.inline)
                    }label: {
                        Image(systemName: "info.circle")
                        Text("About Find Task")
                            .font(.system(size: 14))
                    }
                    .padding([.bottom, .top], 12)
                    
                                        
                }.listStyle(PlainListStyle())
                
                NavigationLink{
                    WorkView(user: user)
                        .navigationBarHidden(true)
                }label: {
                    Image(systemName: "rectangle.2.swap")
                    Text("Switch to work view")
                        .font(.system(size: 14))
                }
                .padding([.bottom, .top], 12)
                
                HStack(){
                    Button(action: {sessionManager.signOut()}){
                        Text("Sign Out")
                            .frame(width: 350, height: 40.0)
                            .foregroundColor(.red)
                    }
                }.padding(.bottom, 20)
            }.padding()
//            .navigationBarHidden(true)
//            .foregroundColor(.primary)
//                .navigationBarTitle(Text("Settings"))
//
//        }
    }
}



struct SettingsView_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    
    static var previews: some View {
        SettingsView(user: DummyUser()).environmentObject(SessionManager())
    }
}
