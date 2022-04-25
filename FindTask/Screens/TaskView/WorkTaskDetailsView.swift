//
//  TaskDetailsView.swift
//  FindTask
//
//  Created by Dixon Chu on 18/04/2022.
//

import SwiftUI

struct WorkTaskDetailsView: View {
    @EnvironmentObject var graphql: Graphql
    @EnvironmentObject var sessionManger: SessionManager
    @State private var isShowingConfirmation = false
    
    let task: Task
    
    var body: some View {
        VStack{
            ScrollView{
                CardView(task: task)
                Spacer()
                CardInfoView(task: task)
                Spacer()
            }
            
            Button(action:{
                    isShowingConfirmation = true
            }){
                Text("Accept Task")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 40.0)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }.confirmationDialog("Please call the client for confirmation", isPresented: $isShowingConfirmation, titleVisibility: .visible){
                Button("Next", role: .destructive) {
                        graphql.updateTaskToAccepted(task: task, acceptedId: sessionManger.userID)
                }
            }.padding(.bottom, 12)
            
        }
    }
}

struct TaskAcceptedView: View {
    let task: Task
    let user: User
    
    @State private var isShowingConfirmation = false
    @EnvironmentObject var graphql: Graphql
    
    var body: some View{
        VStack{
            CardView(task: task)
            Spacer()
            CardInfoView(task: task)
            Spacer()
            ClientInfoCardView(user: user)
            Spacer()
            
            Button(action: {
                isShowingConfirmation = true
            }){
                Text("Finish Task")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 40.0)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }.confirmationDialog("Task completed and payment is settled?", isPresented: $isShowingConfirmation, titleVisibility: .visible){
                Button("Confirm", role: .destructive) {
                    // update task status to complete
                }
            }.padding(.bottom, 12)
        }
    }
}


//struct TaskDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskDetailsView().environmentObject(Graphql())
//    }
//}
