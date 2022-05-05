//
//  ResetPasswordView.swift
//  FindTask
//
//  Created by Dixon Chu on 24/02/2022.
//
import Amplify
import Combine
import AWSMobileClient
import SwiftUI

struct ResetPasswordView: View {
    @State var phoneNumber = ""
    @State var confirmationCode = ""
    @State var newPassword = ""
    
    var body: some View {
        VStack{
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
 
    @State private var showAlert = false
    @State private var message = ""
    
    var body: some View{
        VStack(alignment: .leading, spacing: 12){
            
            
            Text("Phone Number")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            TextField("+441234567890", text: $phoneNumber)
                .padding()
                .cornerRadius(5)
                .background(Color.white)
                .keyboardType(.phonePad)
                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            
            Text("New Password")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            SecureField("Password123@1", text: $newPassword)
                .padding()
                .cornerRadius(5)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            
            Text("Your pasword must be at least six characters and should include a combination of numbers, letters, and special characters (!$@%).")
                .font(.system(size: 12))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
            
            Text("Confirmation Code")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            HStack(spacing: 0){
                TextField("Confirmation Code", text: $confirmationCode)
                    .padding()
                    .cornerRadius(5)
                    .background(Color.white)
                    .keyboardType(.numberPad)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
                Button(action: {
                    if phoneNumber.isEmpty || newPassword.isEmpty{
                            message = "Please fill in the phone number and your new password field before getting the code."
                        showAlert = true
                    } else {
                        resetPassword(username: phoneNumber)
                    }
                }){
                    Text("Get Code")
                        .padding()
                        .background(Color.white)
                        .frame(width: 120, height: 55.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                        .foregroundColor(.primary)
                }.alert(isPresented: $showAlert){
                    Alert(title: Text(""),
                          message: Text("\(message)"), dismissButton: Alert.Button.default(Text("OK"),  action:{
                        showAlert = false
                    }))
                }
            }
            
            Spacer()
            
            Button(action: {
                if phoneNumber.isEmpty || newPassword.isEmpty || confirmationCode.isEmpty {
                    message = "Please fill in all the field"
                    showAlert = true
                } else {
                    confirmResetPassword(username: phoneNumber, newPassword: newPassword, confirmationCode: confirmationCode)
                }
            }){
                Text("Reset Password")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 40.0)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(10)
            }.alert(isPresented: $showAlert){
                Alert(title: Text(""),
                      message: Text("\(message)"), dismissButton: Alert.Button.default(Text("OK"),  action:{
                    showAlert = false
                }))
            }
        }.padding()
    }
    
    func confirmResetPassword(
        username: String,
        newPassword: String,
        confirmationCode: String
    ) {
        Amplify.Auth.confirmResetPassword(
            for: username,
            with: newPassword,
            confirmationCode: confirmationCode
        ) { result in
            switch result {
            case .success():
                message = "Password reset success"
                showAlert = true
                DispatchQueue.main.async {
                    sessionManager.showLogin()
                }
                print("Password reset confirmed")
            case .failure(let error):
                message = "\(error.errorDescription)"
                showAlert = true
                print("Reset password failed with error \(error)")
            }
        }
    }
    
    func resetPassword(username: String) {
        Amplify.Auth.resetPassword(for: username) { result in
            do {
                let resetResult = try result.get()
                switch resetResult.nextStep {
                case .confirmResetPasswordWithCode(let deliveryDetails, let info):
                    message = "Confirm reset password with code send to \(deliveryDetails.destination)"
                    showAlert = true
                    print("Confirm reset password with code send to - \(deliveryDetails) \(String(describing: info))")
                case .done:
                    message = "Reset completed"
                    showAlert = true
                    print("Reset completed")
                }
            } catch {
                message = "Reset password failed with error \(error)"
                showAlert = true
                print("Reset password failed with error \(error)")
            }
        }
    }
}

struct ResetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordView().environmentObject(SessionManager())
    }
}
