//
//  WorkView.swift
//  FindTask
//
//  Created by Dixon Chu on 09/03/2022.
//

import SwiftUI
import Amplify

struct WorkView: View {
    
    let user: AuthUser
    
        var body: some View {
        NavigationView{
            TabView{
                HomeView()
                    .tabItem{
                        Image(systemName: "square.and.arrow.down")
                        Text("Accept")
                    }
                
                Text("Record")
                    .tabItem{
                        Image(systemName: "list.bullet.rectangle.portrait")
                        Text("Orders")
                    }
                
                Text("Statistic")
                    .tabItem{
                        Image(systemName: "chart.line.uptrend.xyaxis")
                        Text("Statistic")
                    }
                
                
                ProfileView(user: user)
                    .tabItem{
                        Image(systemName: "person.circle")
                        Text("Profile")
                    }
            }
        }
    }
}

struct HomeView: View{
    var body: some View {
        VStack(spacing:0){
            HStack(spacing: 0){
                Spacer()
                
                NavigationLink{
                    Text("Notification View")
                        .navigationTitle("Notifications")
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    Image(systemName: "bell")
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
            
            Text("No Task Available at the moment...")
                .foregroundColor(.secondary)
            
            Spacer()
            
        }
    }
}

struct OrdersView: View {
    var body: some View {
        VStack{
            
        }
    }
}

struct WorkView_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    static var previews: some View {
        WorkView(user: DummyUser())
    }
}
