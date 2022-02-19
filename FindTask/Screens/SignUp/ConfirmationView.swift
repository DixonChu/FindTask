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
            
            Text("Phone Number: \(phoneNum)")
                .padding()
            
            Divider()
                .frame(width: 250, height: 1.0)

            TextField("Confirmation Code", text: $confirmationCode)
                .padding()
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            
            
            Button("Confirm", action: {
                sessionManager.confirm(phoneNumber: phoneNum, code: confirmationCode)
            }).padding()
                .foregroundColor(.white)
                .frame(width: 350, height: 40.0)
                .background(Color.orange)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding(10)
        }
        .padding()
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView(phoneNum: "07447782825")
    }
}
