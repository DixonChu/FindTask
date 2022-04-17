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
        NavigationView{
            VStack(alignment: .leading, spacing: 12){
                
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                List{
                    NavigationLink{
                        OrderIssueView()
                            .navigationTitle("Profile Picture")
                            .navigationBarTitleDisplayMode(.inline)
                    }label: {
                        HStack(spacing: 12){
                            Text("Profile Picture")
                                .font(.system(size: 14))
                            Spacer()
                            Image(systemName: "person.circle")
                        }
                    }
                    .padding([.bottom, .top], 12)
                    
                    NavigationLink{
                        OrderIssueView()
                            .navigationTitle("First name")
                            .navigationBarTitleDisplayMode(.inline)
                        
                    }label: {
                        HStack(spacing: 12){
                            Text("First name")
                                .font(.system(size: 14))
                            Spacer()
                            Text(sessionManager.givenName)
                        }
                    }
                    .padding([.bottom, .top], 12)
                    
                    NavigationLink{
                        OrderIssueView()
                            .navigationTitle("Mobile Number")
                            .navigationBarTitleDisplayMode(.inline)
                    }label: {
                        HStack(spacing: 12){
                            Text("Mobile Number")
                                .font(.system(size: 14))
                            Spacer()
                            Text(sessionManager.phoneNumber)
                        }
                    }
                    .padding([.bottom, .top], 12)
                    
                }.listStyle(PlainListStyle())
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}



struct PersonalInfomationView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfomationView()
    }
}


