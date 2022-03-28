//
//  ResetPasswordView.swift
//  FindTask
//
//  Created by Dixon Chu on 24/02/2022.
//

import SwiftUI

struct ResetPasswordView: View {
    @State var phoneNumber = ""
    @State var confirmationCode = ""
    @State var newPassword = ""
    
    var body: some View {
        VStack{
            Divider()
            Spacer()
            ForgetPasswordTextField(phoneNumber: $phoneNumber, newPassword: $newPassword ,confirmationCode: $confirmationCode)
            Spacer()
        }
    }
}

struct ForgetPasswordTextField: View{
    @Binding var phoneNumber: String
    @Binding var newPassword: String
    @Binding var confirmationCode: String
    @EnvironmentObject var sessionManager : SessionManager
 
    var body: some View{
        VStack(alignment: .leading, spacing: 12){
            
            
            Text("Your pasword must be at least six characters and should include a combination of numbers, letters, and special characters (!$@%).")
                .font(.system(size: 14))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
            
            Text("Phone Number")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            TextField("Phone Number", text: $phoneNumber)
                .padding()
                .cornerRadius(5)
                .background(Color.white)
                .keyboardType(.phonePad)
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
            
            Text("Confirmation Code")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            HStack(spacing: 0){
                TextField("Confirmation Code", text: $confirmationCode)
                    .padding()
                    .cornerRadius(5)
                    .background(Color.white)
                    .keyboardType(.phonePad)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
                Button(action: {sessionManager.resetPassword(username: phoneNumber)}){
                    Text("Get Code")
                        .padding()
                        .background(Color.white)
                        .frame(width: 120, height: 55.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                        .foregroundColor(.primary)
                }
            }
            
            Spacer()
            
            Button(action: {
                sessionManager.confirmResetPassword(username: phoneNumber, newPassword: newPassword, confirmationCode: confirmationCode)
            }){
                Text("Reset Password")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 40.0)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(10)
            }
        }.padding()
    }
}

struct ResetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordView()
    }
}
