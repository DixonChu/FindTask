//
//  ChangePasswordView.swift
//  FindTask
//
//  Created by Dixon Chu on 01/03/2022.
//

import SwiftUI

struct ChangePasswordView: View {
    @State var oldPassword = ""
    @State var newPassword = ""
    
    var body: some View {
        VStack{
            Divider()
            ChangePassword(oldPassword: $oldPassword, newPassword: $newPassword)
        }
    }
}

struct ChangePassword: View{
    @Binding var oldPassword: String
    @Binding var newPassword: String
    @EnvironmentObject var sessionManager : SessionManager
 
    var body: some View{
        VStack(alignment: .leading, spacing: 12){
            
            Text("Your pasword must be at least six characters and should include a combination of numbers, letters, and special characters (!$@%).")
                .font(.system(size: 14))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
//                .padding(.top, 15)
            
//            Spacer()
            
            Text("Old Password")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            TextField("Old Password", text: $oldPassword)
                .padding()
                .cornerRadius(5)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            
            
            Text("New Password")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            TextField("New Password", text: $newPassword)
                .padding()
                .cornerRadius(5)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            
            Spacer()
            
            Button(action: {
                sessionManager.changePassword(oldPassword: oldPassword, newPassword: newPassword)
            }){
                Text("Change Password")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 40.0)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(10)
            }
        }.padding(12)
    }
}


struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView().environmentObject(SessionManager())
    }
}
