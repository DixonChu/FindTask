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
            ZStack{
            TabView{
                HomeView()
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "square.and.arrow.down")
                        Text("Accept")
                    }
                
                ProgressView()
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "list.bullet.rectangle.portrait")
                        Text("Orders")
                    }
            
//                Text("Statistic")
//                    .tabItem{
//                        Image(systemName: "chart.line.uptrend.xyaxis")
//                        Text("Statistic")
//                    }
                
                NotificationView()
                    .tabItem{
                        Image(systemName: "bell")
                        Text("Notification")
                    }.tag(3)
                
                SettingView(user: user)
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                
                PersonalInfomationView()
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "person")
                        Text("Profile")
                    }.tag(5)
                
//                ProfileView(user: user)
//                    .tabItem{
//                        Image(systemName: "person.circle")
//                        Text("Profile")
//                    }
        }
                
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
            }
    }
}

struct HomeView: View{
    @EnvironmentObject var graphql: Graphql
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("Awaiting Orders")
                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
            }.padding(.bottom, 10)
            
            List(graphql.awaitingTasks){ task in
                NavigationLink{
                    WorkTaskDetailsView(task: task)
                        .navigationTitle(task.taskStatus.localizedCapitalized)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    ListOfTasksView(task: task)
                }
            }.listStyle(PlainListStyle())
            .onAppear{
                graphql.listAllAwaitingTask(sessionUserId: sessionManager.userID)
            }
            .refreshable {
                graphql.listAllAwaitingTask(sessionUserId: sessionManager.userID)
            }
        }
    }
}


struct ListOfTasksView: View {
    let task: Task
    var body: some View{
        VStack{
            VStack(alignment: .leading){
                HStack{
                    
                    if task.taskStatus == "cancelled"{
                        Text(task.taskTitle)
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                    
                    
                    if task.taskStatus == "completed"{
                        Text(task.taskTitle)
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    }
                    
                    
                    if task.taskStatus == "awaiting"{
                        Text(task.taskTitle)
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.yellow)
                    }
                    
                    if task.taskStatus == "accepted"{
                        Text(task.taskTitle)
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.orange)
                    }
                    
                    Spacer()
                    
                    Text(task.taskDate)
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Text(task.taskDescription)
                    .font(.system(size: 12))
                    .lineLimit(2)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Text("£ \(String(task.taskPrice))")
                        .fontWeight(.semibold)
                }
                
            }
        }
    }
}



struct WorkView_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    static var previews: some View {
        WorkView(user: DummyUser()).environmentObject(Graphql())
    }
}
