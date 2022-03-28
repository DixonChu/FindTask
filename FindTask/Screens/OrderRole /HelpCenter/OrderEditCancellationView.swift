//
//  OrderEditCancellationView.swift
//  FindTask
//
//  Created by Dixon Chu on 01/03/2022.
//

import SwiftUI

struct OrderEditCancellationView: View {
    var body: some View {
        VStack{
            List{
                NavigationLink{
                    HelpEditTaskView()
                        .navigationTitle("Order, Edit and Cancellation")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("How to edit the task?")
                            .foregroundColor(.primary)
                    }
                }
                
                
                NavigationLink{
                    HelpChangeWorkerView()
                        .navigationTitle("Order, Edit and Cancellation")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("How to change the worker?")
                            .foregroundColor(.primary)
                    }
                }
                
                
                NavigationLink{
                    HelpCancelTaskView()
                        .navigationTitle("Order, Edit and Cancellation")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("How to cancel the task?")
                            .foregroundColor(.primary)
                    }
                }
                
                NavigationLink{
                    PlacingOrderHelpView()
                        .navigationTitle("Order, Edit and Cancellation")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("Are there any cancellation fee?")
                            .foregroundColor(.primary)
                    }
                }
                
                
            }.listStyle(PlainListStyle())
        }
    }
}

struct HelpEditTaskView: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to edit the task?")
                .font(.title)
            Text("Unfortunately, you are not able to edit the task once you have post the task.")
            Spacer()
        }.padding()
    }
}

struct HelpChangeWorkerView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to change the worker?")
            .font(.title)
            Text("Click the icon on the top right corner on the order page and click \"Find a new worker\". Once unassigned, your task can be accepeted by other workers.")
            Text("Please note that you can only unassign the worker once for each task.")
            Spacer()
        }.padding()
    }
}

struct HelpCancelTaskView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to cancel the task?")
                .font(.title)
            Text("For tasks that are not yet matched with a worker, you can cancel the task anytime by clicking \"Cancel Task\" on the post page via the button on the top right corner.")
            Text("For immediate tasks that have been matched with a worker, you may cancel your order up to 5 minutes after getting matched.")
            Text("For scheduled tasks, you may cancel up to 45 minutes before the scheduled task time after it has been mathced.")
            Text("If you wish to cancel the task after the 5 minute period, please contact Customer Service Team to do so. Please note that cancellation fees may be applied after this timeframe.")
            Spacer()
        }.padding()
    }
}

struct HelpCancellationView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("Are ther any cancellation fees?")
                .font(.title)
            Text("If the task has been confirmed by the worker and a cancellation is made while the worker is working in progress, a £5 cancellation fee will be applied.")
            Spacer()
        }.padding()
    }
}

struct OrderEditCancellationView_Previews: PreviewProvider {
    static var previews: some View {
        OrderEditCancellationView()
    }
}
