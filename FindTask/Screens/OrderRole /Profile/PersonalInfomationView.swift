//
//  PersonalInfomationView.swift
//  FindTask
//
//  Created by Dixon Chu on 22/02/2022.
//

import SwiftUI

struct PersonalInfomationView: View {
    @EnvironmentObject var sessionManager : SessionManager
    
    @State private var isShowingConfirmation = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("Profile")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                Spacer()
                
                
            }.padding(.bottom, 10)
            LazyVStack(alignment: .leading, spacing: 12){
                
//                NavigationLink{
//                    OrderIssueView()
//                        .navigationTitle("Profile Picture")
//                        .navigationBarTitleDisplayMode(.inline)
//                }label: {
//                    HStack(spacing: 12){
//                        Text("Profile Picture")
//                            .font(.system(size: 14))
//                        Spacer()
//                        Image(systemName: "person.circle")
//                    }
//                }
//                .padding([.bottom, .top], 5)
//                Divider()
                
                Button(action: {
                    isShowingConfirmation = true
                }){
                    HStack(spacing: 12){
                        Text("First name")
                            .font(.system(size: 14))
                        Spacer()
                        Text(sessionManager.givenName)
                    }
                }.alert(isPresented: $isShowingConfirmation){
                    Alert(
                        title: Text("Please contact customer support to make a change"),
                        dismissButton: .default(Text("Okay"), action: {
                                isShowingConfirmation = false
                        })
                    )
                }
                
                Divider()
                
                Button(action: {
                    isShowingConfirmation = true
                }){
                    HStack(spacing: 12){
                        Text("Mobile Number")
                            .font(.system(size: 14))
                        Spacer()
                        Text(sessionManager.phoneNumber)
                    }
                }.alert(isPresented: $isShowingConfirmation){
                    Alert(
                        title: Text("Please contact customer support to make a change"),
                        dismissButton: .default(Text("Okay"), action: {
                            isShowingConfirmation = false
                        })
                    )
                }
                
                
            }
            .foregroundColor(.primary)
            Spacer()
        }
        .padding()
        
    }
}


//struct PersonalInfomationView_Previews: PreviewProvider {
//    static var previews: some View {
//        PersonalInfomationView()
//    }
//}
//


