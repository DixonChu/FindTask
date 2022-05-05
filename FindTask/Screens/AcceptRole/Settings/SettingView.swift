//
//  SettingView.swift
//  FindTask
//
//  Created by Dixon Chu on 14/03/2022.
//

import SwiftUI
import Amplify

struct SettingView: View {
    @EnvironmentObject var sessionManager : SessionManager
    
    let user: AuthUser
    
    @State private var showingPopover = false
    
    var body: some View {
        //        NavigationView{
        VStack{
            HStack{
                Spacer()
                Text("Settings")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                Spacer()
                
                
            }.padding(.bottom, 10)
            
            LazyVStack(alignment: .leading, spacing: 12){
                NavigationLink{
                    ChangePasswordView()
                        .navigationTitle("Change Password")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack{
                        Image(systemName: "key")
                        VStack(alignment: .leading, spacing: 4){
                            Text("Change Password")
                                .font(.system(size: 14))
//                                .fontWeight(.bold)
                            Text("Change your password at any time")
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }
                .padding([.bottom, .top], 5)
                Divider()
                
                NavigationLink{
                    AboutView()
                        .navigationTitle("About")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack{
                        Image(systemName: "info.circle")
                        VStack(alignment: .leading, spacing: 4){
                            Text("About Find Task")
                                .font(.system(size: 14))
//                                .fontWeight(.bold)
                            
                            Text("About the app version and upcoming features")
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }
                .padding([.bottom, .top], 5)
                Divider()
                
                NavigationLink{
                    HelpCenterView()
                        .navigationTitle("Help Center")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack{
                        Image(systemName: "questionmark.circle")
                        VStack(alignment: .leading, spacing: 4){
                            Text("Help Center")
                                .font(.system(size: 14))
                            
                            Text("FAQ can be found in here")
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }
                .padding([.bottom, .top], 5)
                Divider()
                
                NavigationLink{
                    ChangeLocationView()
                        .navigationTitle("Location")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack{
                        Image(systemName: "pin.circle")
                        VStack(alignment: .leading, spacing: 4){
                            Text("Location")
                                .font(.system(size: 14))
//                                .fontWeight(.bold)
                            
                            Text("Select the country you live in.")
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }
                .padding([.bottom, .top], 5)
                Divider()
                
                NavigationLink{
                    Home(user: user)
                        .navigationBarHidden(true)
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarBackButtonHidden(true)
                }label: {
                    Image(systemName: "rectangle.2.swap")
                    VStack(alignment: .leading, spacing: 4){
                        Text("Switch to order view")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                        Text("Post tasks and sit back")
                            .font(.system(size: 12))
                            .foregroundColor(.secondary)
                    }
                }
                .foregroundColor(.blue)
                .padding([.bottom, .top], 12)
                
                
            }.foregroundColor(.primary)
            
            
            
            
            HStack(){
                Button(action: {sessionManager.signOut()}){
                    Text("Sign Out")
                        .frame(width: 350, height: 40.0)
                        .foregroundColor(.red)
                }
            }.padding()
            Spacer()
        }.padding()
        //                .navigationTitle("Settings")
        //                .navigationBarTitleDisplayMode(.inline)
        //        }
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
