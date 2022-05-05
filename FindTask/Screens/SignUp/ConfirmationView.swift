//
//  ConfirmationView.swift
//  FindTask
//
//  Created by Dixon Chu on 18/02/2022.
//

import SwiftUI
import Amplify
import Combine
import AWSMobileClient

struct ConfirmationView: View {
    @EnvironmentObject var sessionManager : SessionManager
    @State private var showAlert = false
    @State private var message = ""
    
    @State var confirmationCode = ""
    let phoneNum: String
    
    var body: some View {
        
        VStack (alignment: .leading, spacing: 0){
            
            Text("Enter your verification code")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.bottom)
            
            
            Text("We sent the code to the phone number \(phoneNum)")
                .foregroundColor(.primary)
                .padding(.bottom)
            
            VStack(alignment: .leading){
                
                TextField("Verification Code", text: $confirmationCode)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
            }
            .padding(.bottom)
            
            Text("Find Task may use your phone number to call or send text messages with information regarding your account.")
                .foregroundColor(.secondary)
                .font(.system(size: 13))
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
                Button("Resend code", action: {
                    sessionManager.resendCode(phoneNumber: phoneNum)
                })
                    .padding()
                    .foregroundColor(.blue)
                    .frame(width: 350, height: 40.0)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                
            
            
            Spacer()
            
            
            Button("Submit", action: {
                if !confirmationCode.isEmpty{
                    confirm(phoneNumber: phoneNum, code: confirmationCode)
                } else {
                    message = "You need a verification code."
                    showAlert = true
                }
            })
                .padding()
                .foregroundColor(.white)
                .frame(width: 350, height: 40.0)
                .background(Color.orange)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .alert(isPresented: $showAlert){
                    Alert(title: Text(""),
                          message: Text("\(message)"), dismissButton: Alert.Button.default(Text("OK"),  action:{
                        showAlert = false
                    }))
                }
            
            
        }
        .padding()
        .padding(.top, 50)
        
        
    }
    
    func confirm(phoneNumber: String, code: String) {
        _ = Amplify.Auth.confirmSignUp(for: phoneNumber, confirmationCode: code)
        {
            result in
            
            switch result {
            case .success(let confirmResult):
                print(confirmResult)
                if confirmResult.isSignupComplete {
                    DispatchQueue.main.async {
                        sessionManager.showLogin()
                    }
                }
            case .failure(let error):
                message = "\(error)"
                showAlert = true
                print("failed to confirm code:", error)
            }
            
        }
    }
    
}


struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView(phoneNum: "").environmentObject(SessionManager())
    }
}



