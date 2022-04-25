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
        //        NavigationView{
        VStack{
            HStack{
                Spacer()
                Text("Profile")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                Spacer()
                
                
            }.padding(.bottom, 10)
            LazyVStack(alignment: .leading, spacing: 12){
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
                .padding([.bottom, .top], 5)
                Divider()
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
                .padding([.bottom, .top], 5)
                Divider()
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
                .padding([.bottom, .top], 5)
                
            }
            .foregroundColor(.primary)
            Spacer()
        }
        .padding()
        //            .navigationTitle("Profile")
        //            .navigationBarTitleDisplayMode(.inline)
        //        }
    }
}



struct PersonalInfomationView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfomationView()
    }
}


