//
//  ProfileView.swift
//  FindTask
//
//  Created by Dixon Chu on 14/03/2022.
//

import SwiftUI
import Amplify


struct ProfileView: View {
    
    let user: AuthUser
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Spacer()
                NavigationLink{
                    SettingView()
                        .navigationTitle("Settings")
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    Image(systemName: "gear")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                        .foregroundColor(.primary)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            
            Spacer()
            
            Profile(user: user)
        }
    }
}

struct Profile: View {
    @EnvironmentObject var sessionManager : SessionManager
  
    let user: AuthUser
    var body: some View {
        VStack{
            Image(systemName: "person.circle")
            Text(sessionManager.givenName)
            HStack{
                Text("User location")
                
            }

            HStack{
                Image(systemName: "star")
                
                Image(systemName: "star")
                Image(systemName: "star")
                Image(systemName: "star")
                Image(systemName: "star")
            }
            
            Divider()
            
            
            Spacer()
            switchToPlaceTaskView(user: user)
            
        }
        
    }
}

struct switchToPlaceTaskView : View{
    let user: AuthUser
    
    var body: some View{
        NavigationLink{
            Home(user: user)
                .navigationBarHidden(true)
        } label: {
            HStack{
                Image(systemName: "rectangle.2.swap")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 22, height: 22)
                Text("Switch to place task")
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .foregroundColor(.primary)
            .padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    static var previews: some View {
        WorkView(user: DummyUser())
    }
}

