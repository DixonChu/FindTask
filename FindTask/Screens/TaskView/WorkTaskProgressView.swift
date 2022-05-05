//
//  WorkTaskProgressView.swift
//  FindTask
//
//  Created by Dixon Chu on 25/04/2022.
//

import SwiftUI
import Amplify

struct WorkTaskProgressView: View {
    @EnvironmentObject var graphql: Graphql
    @State private var isShowingConfirmation = false
    
    let task: Task
//    let user: User
    
    var body: some View {
        VStack{
            ScrollView{
                CardView(task: task)
                Spacer()
                CardInfoView(task: task)
                Spacer()
                ClientInfoCardView()
                Spacer()
                CardMapInfoView(task: task)
            }
            
            Spacer()
            
            Button(action: {
                isShowingConfirmation = true
            }){
                Text("Complete Task")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 40.0)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
            .confirmationDialog("Task completed and payment is settled", isPresented: $isShowingConfirmation, titleVisibility: .visible){
                Button("Confirm", role: .destructive) {
                    graphql.getTaskByIdAndUpdateStatus(taskId: task.id, taskStatus: "completed")
                }
            }
            .padding(.bottom, 12)
            
        }
    }
}

//struct WorkTaskProgressView_Previews: PreviewProvider {
//    static var previews: some View {
//        WorkTaskProgressView()
//    }
//}
