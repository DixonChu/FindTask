//
//  ChangePasswordView.swift
//  FindTask
//
//  Created by Dixon Chu on 01/03/2022.
//
import Amplify
import Combine
import AWSMobileClient
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

    @State private var showAlert = false
    @State private var successAlert = false
    @State private var errorMessage = ""
    
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
            
            SecureField("Old Password", text: $oldPassword)
                .padding()
                .cornerRadius(5)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            
            
            Text("New Password")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            SecureField("New Password", text: $newPassword)
                .padding()
                .cornerRadius(5)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            
            Spacer()
            
            Button(action: {
                DispatchQueue.main.async {
                    changePassword(oldPassword: oldPassword, newPassword: newPassword)
                }
                
                if successAlert == true {
                    successAlert = true
                }
            }){
                Text("Change Password")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 40.0)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(10)
            }.alert(isPresented: $successAlert){
                Alert(title: Text("Change Password Success"),
                      message: Text("Password changed succesfully"), dismissButton: Alert.Button.default(Text("OK"),  action:{
                    successAlert = false
                }))
            }
            .alert(isPresented: $showAlert){
                Alert(title: Text("Change Password Failed"),
                      message: Text("\(errorMessage)"), dismissButton: Alert.Button.default(Text("OK"),  action:{
                    showAlert = false
                }))
            }
            
        }.padding(12)
    }
    
    func changePassword(oldPassword: String, newPassword: String) {
        Amplify.Auth.update(oldPassword: oldPassword, to: newPassword) { result in
            switch result {
            case .success:
                successAlert = true
                print("Change password succeeded")
            case .failure(let error):
                showAlert = true
                errorMessage = "Change password failed with error \(error.errorDescription)"
            }
        }
    }
}


struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView().environmentObject(SessionManager())
    }
}
