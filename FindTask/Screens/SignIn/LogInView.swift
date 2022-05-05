//
//  SignInContentView.swift
//  FindTask
//
//  Created by Dixon Chu on 13/02/2022.
//

import SwiftUI
import Combine
import AWSMobileClient
import Foundation
import Amplify

struct LogInView: View {
    
    @State var keyboardOn = false
    @State var isOn = false
    
    @State var phoneNumber = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                
                Text("Sign In")
                    .fontWeight(.semibold)
                
                Divider()
                    .frame(width: 250, height: 1.0)
                
                SignInTextField(phoneNumber: $phoneNumber, password: $password)
    //                .onTapGesture {
    //                    withAnimation{keyboardOn = true}
    //                }

                Spacer()
            }
            .onTapGesture {
                hideKeyboard()
            }
        }
    }
}



struct SignInTextField: View {
    @EnvironmentObject var sessionManager : SessionManager
    @EnvironmentObject var graphql: Graphql

    @Binding var phoneNumber: String
    @Binding var password: String
    
    @State var code = ""
    @State private var showAlert = false
    
    let passPattern = #"(?=.{8,})"# + #"(?=.*[A-Z])"# + #"(?=.*[a-z])"# + #"(?=.*\d)"# + #"(?=.*[ !$%&?._-])"#
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text("Phone Number")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            HStack{
                
                TextField("+4401234567899", text: $phoneNumber)
                    .padding()
                    .cornerRadius(5)
                    .background(Color.white)
                    .keyboardType(.phonePad)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
                
//                Image(systemName: phoneNumber.isEmpty || password.isEmpty ? "" : "checkmark")
//                    .foregroundColor(Color.green)
            }.padding(.bottom, 10)
            
            
            
            Text("Password")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            HStack{
                
                SecureField("Password@123", text: $password)
                    .padding()
                    .cornerRadius(5)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
//                Image(systemName: password.isEmpty || phoneNumber.isEmpty ? "" : "checkmark")
//                    .foregroundColor(Color.green)
            }.padding(.bottom, 10)
        }
        
        .padding(20)
        
        Button(action: {
            if(!phoneNumber.isEmpty && !password.isEmpty){
                // Login function
                sessionManager.login(phoneNumber: phoneNumber, password: password)
                
                if sessionManager.signInShowAlert == true {
                    showAlert = true
                }
                
                if !sessionManager.userID.isEmpty{
                // Graphql create user
                graphql.createUser(id: sessionManager.userID, givenName: sessionManager.givenName, familyName: sessionManager.familyName, phoneNumber: sessionManager.phoneNumber)
                } else {
                    graphql.createUser(id: sessionManager.userID, givenName: sessionManager.givenName, familyName: sessionManager.familyName, phoneNumber: sessionManager.phoneNumber)
                }
                
            } else { 
                showAlert = true
            }
        }){
            Text("Sign in")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .frame(width: 350, height: 40.0)
                .background(Color.orange)
                .clipShape(RoundedRectangle(cornerRadius: 5))
        }.alert(isPresented: $showAlert){
            Alert(title: Text("Sign in Failed"),
                  message: Text("Either phone number or password is missing, or they are wrong."), dismissButton: Alert.Button.default(Text("OK"),  action:{
                showAlert = false
                sessionManager.signInShowAlert = false
            }))
        }
        
        NavigationLink {
            ResetPasswordView()
                .navigationTitle("Reset Password")
                .navigationBarTitleDisplayMode(.inline)
        } label: {
            Text("forget password?")
                .foregroundColor(.blue)
        }
        .padding(.bottom, 15)
        
        Button("Don't have an account? Sign Up", action: {
            sessionManager.showSignUp()
        })
        
    }
}



struct SignInContentView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView().environmentObject(SessionManager())
    }
}
