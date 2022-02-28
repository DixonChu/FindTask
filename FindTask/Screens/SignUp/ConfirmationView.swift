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
        VStack {
            
            Text("Verify Phone Number")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text("Code is sent to: \(phoneNum)")
                .foregroundColor(.gray)
                .padding(.bottom)
            
            VStack(alignment: .leading){
            
                Text("Confirmation Code:")
                
                TextField("Confirmation Code", text: $confirmationCode)
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
            }
            .padding(.top, 45)
            .padding(.bottom)
            
            HStack (spacing: 6){
                Text("Didn't receive code?")
                    .foregroundColor(.gray)
                
                Button(action: {}){
                    Text("Request Again")
                        .fontWeight(.bold)
                }
            }
            Spacer()
            
            Button("Confirm", action: {
                sessionManager.confirm(phoneNumber: phoneNum, code: confirmationCode)
            })
                .padding()
                .foregroundColor(.white)
                .frame(width: 350, height: 40.0)
                .background(Color.orange)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
        }
        .padding()
        
        
    }

}


struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView(phoneNum: "07447782825")
    }
}



