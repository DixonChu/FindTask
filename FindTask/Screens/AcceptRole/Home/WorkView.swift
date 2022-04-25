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
    
    var body: some View {
        VStack{
            Text("Work")
            List(graphql.awaitingTasks){ task in
                NavigationLink{
                    WorkTaskDetailsView(task: task)
                        .navigationTitle(task.taskStatus)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    ListOfTasksView(task: task)
                }
            }.listStyle(PlainListStyle())
            .onAppear{
                graphql.awaitingTasks.removeAll()
                graphql.listAllAwaitingTask()
            }
            .refreshable {
                graphql.awaitingTasks.removeAll()
                graphql.listAllAwaitingTask()
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
                    Text(task.taskTitle)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    
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
        WorkView(user: DummyUser()).environmentObject(Graphql())
    }
}
