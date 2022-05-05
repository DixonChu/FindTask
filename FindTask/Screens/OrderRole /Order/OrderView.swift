//
//  OrderHistoryView.swift
//  FindTask
//
//  Created by Dixon Chu on 22/02/2022.
//

import SwiftUI

struct OrderView: View {
    @State var index = 1
    @State var offset: CGFloat = UIScreen.main.bounds.width

    @State var searchTask = ""
    var width = UIScreen.main.bounds.width
    var body: some View{
//        NavigationView{
        VStack{
            AppBar(index: self.$index, offset: self.$offset, searchTask: $searchTask)
        
            GeometryReader{g in
                
                HStack(spacing: 0){
                    First()
                        .frame(width: g.frame(in: .global).width)
                    Second()
                        .frame(width: g.frame(in: .global).width)
                    Third()
                        .frame(width: g.frame(in: .global).width)
                }
                .offset(x: self.offset - self.width)
            }
        }
        .animation(.default)
//        .navigationTitle("Orders")
//        .navigationBarTitleDisplayMode(.inline)
//        }
    }
}


struct AppBar: View {
    @Binding var index: Int
    @Binding var offset: CGFloat
    @Binding var searchTask: String
    
    var width = UIScreen.main.bounds.width
    
    var body: some View{
        VStack(alignment: .leading, content: {
            HStack{
                Spacer()
            Text("Orders")
                .font(.system(size: 18))
                .fontWeight(.semibold)
                Spacer()
            }.padding()
            
//            ZStack{
//                Rectangle()
//                    .foregroundColor(Color(.systemGray6))
//
//                HStack{
//                    Image(systemName: "magnifyingglass")
//                    TextField("Search", text: $searchTask)
//                }
//                .foregroundColor(.gray)
//                .padding(.leading, 13)
//
//            }
//            .frame(height: 40)
//            .cornerRadius(13)

            
            HStack{
                Button(action: {
                    self.index = 1
                    self.offset = self.width
                }){
                    VStack(spacing: 8){
                        HStack(spacing: 12){
                            Text("Ongoing")
                                .foregroundColor(self.index == 1 ? .primary : Color.primary.opacity(0.7))
                        }
                        Capsule()
                            .fill(self.index == 1 ? Color.primary : Color.clear)
                            .frame(height: 2)
                    }
                }
                
                Button(action: {
                    self.index = 2
                    self.offset = 0
                }){
                    VStack(spacing: 8){
                        HStack(spacing: 12){

                            Text("Completed")
                                .foregroundColor(self.index == 2 ? .primary : Color.primary.opacity(0.7))
                        }
                        Capsule()
                            .fill(self.index == 2 ? Color.primary : Color.clear)
                            .frame(height: 2)
                    }
                }
                
                Button(action: {
                    self.index = 3
                    self.offset = -self.width
                }){
                    VStack(spacing: 8){
                        HStack(spacing: 12){
                            Text("Cancelled")
                                .foregroundColor(self.index == 3 ? .primary : Color.primary.opacity(0.7))
                        }
                        Capsule()
                            .fill(self.index == 3 ? Color.primary : Color.clear)
                            .frame(height: 2)
                    }
                }
            }
        })
        .padding(.top, 15)
        .padding(.horizontal)
        .padding(.bottom, 10)
        .background(Color.white)
    }
}


// Awaiting order, ongoing order
struct First : View {
    @EnvironmentObject var graphql: Graphql
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View{
        GeometryReader{_ in
            List(graphql.userOwnTasks){ task in
                NavigationLink{
                    UserTaskProgressView(task: task)
                        .navigationTitle(task.taskStatus.localizedCapitalized)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    ListOfTasksView(task: task)
                }
                
            }.listStyle(PlainListStyle())
                .onAppear{
                    graphql.listAllOwnerTask(taskOwner: sessionManager.userID)
                }
                .refreshable {
                    graphql.listAllOwnerTask(taskOwner: sessionManager.userID)
                }
        }
        .padding(.bottom, 18)
    }
    
}


// Completed order
struct Second : View {
    @EnvironmentObject var graphql: Graphql
    @EnvironmentObject var sessionManager: SessionManager
    var body: some View{
        GeometryReader{_ in
            
            List(graphql.completedTasks){ task in
                NavigationLink{
                    UserTaskCompletedView(task: task)
                        .navigationTitle(task.taskStatus.localizedCapitalized)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    ListOfTasksView(task: task)
                }
            }.listStyle(PlainListStyle())
                .onAppear{
                    graphql.completedTasks.removeAll()
                    graphql.listAllCompletedTask(taskOwner: sessionManager.userID)
                }
                .refreshable {
                    graphql.completedTasks.removeAll()
                    graphql.listAllCompletedTask(taskOwner: sessionManager.userID)
                }
            
        }
        .background(Color.white)
    }
}

// Cancelled order
struct Third : View {
    @EnvironmentObject var sessionManager: SessionManager
    @EnvironmentObject var graphql: Graphql
    
    var body: some View{
        GeometryReader{_ in
            List(graphql.cancalledTasks){ task in
                NavigationLink{
                    UserTaskCancelledView(task: task)
                        .navigationTitle(task.taskStatus.localizedCapitalized)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    ListOfTasksView(task: task)
                }
            }.listStyle(PlainListStyle())
                .onAppear{
                    graphql.cancalledTasks.removeAll()
                    graphql.listAllCancelledTask(taskOwner: sessionManager.userID)
                }
                .refreshable {
                    graphql.cancalledTasks.removeAll()
                    graphql.listAllCancelledTask(taskOwner: sessionManager.userID)
                }
        }
        
    }
}




//struct OrderView_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderView().environmentObject(Graphql())
//    }
//}
