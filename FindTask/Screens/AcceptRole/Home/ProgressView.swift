//
//  ProgressView.swift
//  FindTask
//
//  Created by Dixon Chu on 21/04/2022.
//

import SwiftUI


struct ProgressView: View {
    @State var index = 1
    @State var offset: CGFloat = UIScreen.main.bounds.width

    @State var searchTask = ""
    var width = UIScreen.main.bounds.width
    
    var body: some View{
//        NavigationView{
        VStack{
            ProgressAppBar(index: self.$index, offset: self.$offset, searchTask: $searchTask)
        
            GeometryReader{g in
                
                HStack(spacing: 0){
                    ProgressFirst()
                        .frame(width: g.frame(in: .global).width)
                    ProgressSecond()
                        .frame(width: g.frame(in: .global).width)
                    ProgressThird()
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


struct ProgressAppBar: View {
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
                            Text("In Progress")
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


// In Progress order
struct ProgressFirst : View {
    @EnvironmentObject var graphql: Graphql
    @EnvironmentObject var sessionManager: SessionManager
    var body: some View{
        GeometryReader{_ in
            List(graphql.workOngoingTasks){ task in
                NavigationLink{
                    WorkTaskProgressView(task: task)
                        .navigationTitle("In Progress")
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    ListOfTasksView(task: task)
                }
                
            }.listStyle(PlainListStyle())
            .onAppear{
                graphql.workListAllOngoingTask(acceptedId: sessionManager.userID)
            }
            .refreshable {
                graphql.workListAllOngoingTask(acceptedId: sessionManager.userID)
            }
        }
        .padding(.bottom, 18)
    }
}


// Completed order
struct ProgressSecond : View {
    @EnvironmentObject var graphql: Graphql
    @EnvironmentObject var sessionManager: SessionManager
    var body: some View{
        GeometryReader{_ in
            
            List(graphql.workCompletedTasks){ task in
                NavigationLink{
                    UserTaskCompletedView(task: task)
                        .navigationTitle(task.taskStatus.localizedCapitalized)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    ListOfTasksView(task: task)
                }
            }.listStyle(PlainListStyle())
                .onAppear{
                    graphql.workListAllCompletedTask(acceptedId: sessionManager.userID)
                }
                .refreshable {
                    graphql.workListAllCompletedTask(acceptedId: sessionManager.userID)
                }
        }
        .background(Color.white)
    }
}

// Cancelled order
struct ProgressThird : View {
    @EnvironmentObject var sessionManager: SessionManager
    @EnvironmentObject var graphql: Graphql
    
    var body: some View{
        GeometryReader{_ in
            List(graphql.workCancelledTasks){ task in
                NavigationLink{
                    UserTaskCancelledView(task: task)
                        .navigationTitle(task.taskStatus)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    ListOfTasksView(task: task)
                }
            }.listStyle(PlainListStyle())
                .onAppear{
                    graphql.workListAllCancelledTask(acceptedId: sessionManager.userID)
                }
                .refreshable {
                    graphql.workListAllCancelledTask(acceptedId: sessionManager.userID)
                }
        }
        
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
