//
//  PlacingOrderHelpView.swift
//  FindTask
//
//  Created by Dixon Chu on 23/02/2022.
//

import SwiftUI

struct PlacingOrderHelpView: View {
    var body: some View {
        VStack{
            List{
                NavigationLink{
                    HelpPlaceTaskView()
                        .navigationTitle("Placing an Order")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("How to place a task?")
                            .foregroundColor(.primary)
                    }
                }
                
                NavigationLink{
                    HelpScheduleTaskView()
                        .navigationTitle("Placing an Order")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("How to schedule an order?")
                            .foregroundColor(.primary)
                    }
                }
                
                NavigationLink{
                    HelpContactPersonView()
                        .navigationTitle("Placing an Order")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("How to contact the worker?")
                            .foregroundColor(.primary)
                    }
                }
                
                NavigationLink{
                    HelpTimeToCompleteTaskView()
                        .navigationTitle("Placing an Order")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("How long will the worker take to complete the task?")
                            .foregroundColor(.primary)
                    }
                }
                
                NavigationLink{
                    HelpCheckTaskStatusView()
                        .navigationTitle("Placing an Order")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("How to check the task status?")
                            .foregroundColor(.primary)
                    }
                }
                
                NavigationLink{
                    HelpTaskStatusDescription()
                        .navigationTitle("Placing an Order")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("What are the task status?")
                            .foregroundColor(.primary)
                    }
                }
                
                NavigationLink{
                    HelpRatePersonView()
                        .navigationTitle("Placing an Order")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("How to rate for the worker?")
                            .foregroundColor(.primary)
                    }
                }
                
                NavigationLink{
                    HelpChangeRatingView()
                        .navigationTitle("Placing an Order")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("How to change the rating?")
                            .foregroundColor(.primary)
                    }
                }
                
            }.listStyle(PlainListStyle())
        }
    }
}

struct HelpPlaceTaskView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to place a task?")
                .font(.title)
            Text("Follow the steps to place a task:")
            Text("1. Input the headline, description, location and price for your task.")
            Text("You may choose to make it as an immediate order or a schedule order based on your needs:")
            Text("- Immediate order: The worker will start doing the task immediately (remote) or will reach the destination in 30 minutes")
            Text("- Schedule order: You may select the start working time which is from 30 minutes up to 7 days")
            Spacer()
        }.padding()
    }
}

struct HelpScheduleTaskView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to schedule a task?")
                .font(.title)
            Text("To schedule a task, simply click on the \"Task Time\" on the task placing page and select \"Later\". You will then be able to select the start working time from 30 minutes later and up to 7 days.")
            Spacer()
        }.padding()
    }
}

struct HelpContactPersonView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to contact the person who accepted the task?")
                .font(.title)
            Text("Once you are matched with a worker, you will be able to see the details of the worker. He/she will also contact you via phone call to confirm the confirmation.")
            Text("If you want to reach out the worker again, you may click on the \"Call\" button underneath the worker details to call the worker directly.")
            Spacer()
            
        }.padding()
    }
}

struct HelpTimeToCompleteTaskView: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How long will the worker take to complete the task?")
                .font(.title)
            Text("The time for the worker to complete the task is depends on the task given and may be changed due to unforeseeable reasons.")
            Spacer()
        }.padding()
    }
}

struct HelpCheckTaskStatusView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to check the task status?")
                .font(.title)
            Text("You will be able to check the location of the worker via the order page of the app. You may see where your worker is in real time and get notified istantly when the task has been copleted.")
            Spacer()
        }.padding()
    }
}

struct HelpTaskStatusDescription: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("What kind of task status are there?")
                .font(.title)
            Text("Each status shows the status of the task in real time. Some of teh status that may appear on your task are:")
            Text("Finding a worker: We are currently matching a worker for your task")
            Text("Awaiting Worker: Your task has been meathced with a worker adn the worker is going to contact you")
            Text("Work in progress: The worker has start working on the task")
            Text("Confirming Bill: Worker has finished the task and is confirming the final bill")
            Text("Settle Bill: The worker has sent the final bill")
            Text("Completed: The task has been completed and payment has been settled")
            Text("Cancelled: Your task is cancelled")
            Spacer()
        }.padding()
    }
}

struct HelpRatePersonView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to rate for the worker?")
                .font(.title)
            Text("We care about your experience. After the task has been completed, you will be prompted to rate the worker. If you would like to rate the worker later, simply just go back to the order page and you may rate the worker anytime.")
            Spacer()
        }.padding()
    }
}

struct HelpChangeRatingView : View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to change the worker rating?")
                .font(.title)
            Text("Unfortuately, you won't be able to change the worker rating after submission.")
            Spacer()
        }.padding()
    }
}

struct PlacingOrderHelpView_Previews: PreviewProvider {
    static var previews: some View {
        PlacingOrderHelpView()
    }
}
