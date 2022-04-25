//
//  UserTaskCancelledView.swift
//  FindTask
//
//  Created by Dixon Chu on 20/04/2022.
//

import SwiftUI

struct UserTaskCancelledView: View {
    @EnvironmentObject var graphql: Graphql
    @State private var isShowingConfirmation = false
    
    let task: Task
    
    var body: some View {
        ScrollView{
            CardView(task: task)
            Spacer()
            CardInfoView(task: task)
            
            Spacer()

        }
    }
}


