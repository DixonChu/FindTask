//
//  PersonalInfomationView.swift
//  FindTask
//
//  Created by Dixon Chu on 22/02/2022.
//

import SwiftUI

struct PersonalInfomationView: View {
    @EnvironmentObject var sessionManager : SessionManager

    var body: some View {
        
        VStack{
            List{
                NavigationLink{
                    OrderIssueView()
                        .navigationTitle("Profile Picture")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack(spacing: 12){
                        Text("Profile Picture")
                        Spacer()
                        Image(systemName: "person.circle")
                    }
                }
                
                NavigationLink{
                    OrderIssueView()
                        .navigationTitle("First name")
                        .navigationBarTitleDisplayMode(.inline)
                    
                }label: {
                    HStack(spacing: 12){
                        Text("First name")
                        Spacer()
                        Text(sessionManager.givenName)
                    }
                }
                
                NavigationLink{
                    OrderIssueView()
                        .navigationTitle("Mobile Number")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack(spacing: 12){
                        Text("Mobile Number")
                        Spacer()
                        Text(sessionManager.phoneNumber)
                    }
                }
                
            }.listStyle(PlainListStyle())
        }
        
    }
}



struct PersonalInfomationView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfomationView()
    }
}


