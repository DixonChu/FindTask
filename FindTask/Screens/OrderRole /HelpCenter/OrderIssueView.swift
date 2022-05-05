//
//  OrderIssueView.swift
//  FindTask
//
//  Created by Dixon Chu on 01/03/2022.
//

import SwiftUI

struct OrderIssueView: View {
    var body: some View {
        VStack{
            List{
                NavigationLink{
                    CannotFindWorkerView()
                        .navigationTitle("Order Issues")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("Cannot find a worker?")
                            .foregroundColor(.primary)
                    }
                }
                
                
                NavigationLink{
                    TaskNotCompleted()
                        .navigationTitle("Order Issues")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("My Task is still not completed?")
                            .foregroundColor(.primary)
                    }
                }
                
                NavigationLink{
                    WorkerNotResponsive()
                        .navigationTitle("Order Issues")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("What should I do if my worker is unresponsive?")
                            .foregroundColor(.primary)
                    }
                }
                
            }.listStyle(PlainListStyle())
        }
    }
}


struct CannotFindWorkerView: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("I cannot find a worker?")
                .font(.title)
            Text("We are sorry that we may not able to find you a worker at the soonest. It could be due to no worker available around your area or all workers are busy with their orders.")
            Spacer()
        }.padding()
    }
}

struct TaskNotCompleted: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("What should I do if my worker is unresponsive?")
                .font(.title)
            Text("Please contact our Customer Service Team for further assistance.")
            Spacer()
        }.padding()
    }
}

struct WorkerNotResponsive: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("My Task is still not completed?")
                .font(.title)
            Text("If your order is still not completed, please contact our Customer Service Team.")
            Spacer()
        }.padding()
    }
}


struct OrderIssueView_Previews: PreviewProvider {
    static var previews: some View {
        OrderIssueView()
    }
}
