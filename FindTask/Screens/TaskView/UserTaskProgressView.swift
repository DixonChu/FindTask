//
//  TaskProgressView.swift
//  FindTask
//
//  Created by Dixon Chu on 20/04/2022.
//

import SwiftUI

struct UserTaskProgressView: View{
    @EnvironmentObject var graphql: Graphql
    @State private var isShowingConfirmation = false
    
    let task: Task
    
    var body: some View {
        VStack{
            ScrollView{
                CardView(task: task)
                Spacer()
                CardInfoView(task: task)
                Spacer()
                CardMapInfoView(task: task)
//
                if task.taskStatus == "accepted"{
                    ClientInfoCardView()
                }
            }
            
            Spacer()
            
            Button(action: {
                isShowingConfirmation = true
            }){
                Text("Cancel Task")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 40.0)
                    .background(Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
            .confirmationDialog("Are you sure to cancel the task?", isPresented: $isShowingConfirmation, titleVisibility: .visible){
                Button("Cancel Task", role: .destructive) {
                    // graphql cancelled task by Id
                    graphql.getTaskByIdAndUpdateStatus(taskId: task.id, taskStatus: "cancelled")
                }
            }
            .padding(.bottom, 12)
            
        }
    }
}

struct MapView: View {
    var body: some View{
        Text("Map")
    }
}
