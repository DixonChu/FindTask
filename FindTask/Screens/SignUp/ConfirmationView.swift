//
//  ConfirmationView.swift
//  FindTask
//
//  Created by Dixon Chu on 18/02/2022.
//

import SwiftUI
import Amplify

struct ConfirmationView: View {
    @EnvironmentObject var sessionManager : SessionManager
    
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
                
                TextField("Confirmation Code", text: $confirmationCode)
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
            }
            .padding(.bottom)
            
            Text("Find Task may use your phone numver to call or send text messages with information regarding your account.")
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
                sessionManager.confirm(phoneNumber: phoneNum, code: confirmationCode)
            })
                .padding()
                .foregroundColor(.white)
                .frame(width: 350, height: 40.0)
                .background(Color.orange)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            
        }
        .padding()
        .padding(.top, 50)
        
        
    }
    
}


struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView(phoneNum: "").environmentObject(SessionManager())
    }
}



