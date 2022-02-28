//
//  SignUpContentView.swift
//  FindTask
//
//  Created by Dixon Chu on 17/02/2022.
//

import SwiftUI

struct SignUpView: View {
//    @EnvironmentObject var sessionManager : SessionManager
    
    @State var givenName = ""
    @State var familyName = ""
    @State var phoneNumber = ""
    @State var password = ""
    
    @State var checked = false
    
    var body: some View {
        VStack(alignment: .center){
            Spacer()
            Text("Sign Up")
            
            Divider()
                .frame(width: 250, height: 1.0)
            
            Spacer()

            SignUpField(givenName: $givenName, familyName: $familyName, phoneNumber: $phoneNumber, password: $password)
            DecideRoles()
            
            Spacer(minLength: 0)
            
            SignUpButton(givenName: $givenName, familyName: $familyName, phoneNumber: $phoneNumber, password: $password)
            Spacer()

        }
        .onTapGesture {
            hideKeyboard()
        }
    }
}

struct SignUpField: View {
    @Binding var givenName: String
    @Binding var familyName: String
    @Binding var phoneNumber: String
    @Binding var password: String
    
    
    var body: some View {
        VStack(alignment:.leading, spacing: 12){
            
            Text("First name")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            
            HStack{
                
                TextField("Given name", text: $givenName)
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
                
                TextField("Family name", text: $familyName)
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
            }
            
            Text("Phone number")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            HStack{
                TextField("Phone Number", text: $phoneNumber)
                    .padding()
                    .keyboardType(.phonePad)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            }
            
            
            Text("Password")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            HStack{
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            }
            
        }.padding(20)
    }
}

struct DecideRoles: View {
    var body: some View {
        Text("I want to:")
            .frame(maxWidth: .infinity, alignment: .center)
        
        HStack{
            Button(action: {}){
                Text("Order task")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 115, height: 35.0)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(5)
            }
            Button(action: {}){
                Text("Work")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 115, height: 35.0)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(5)
            }
        }.frame(maxWidth: .infinity, alignment: .center)
    }
}

struct TAndC: View {
    @Binding var checked: Bool
    
    var body: some View{
        HStack{
            Image(systemName: checked ? "checkmark.sqaure.fill" : "square")
                .foregroundColor(checked ? Color(UIColor.systemOrange) : Color.secondary)
                .onTapGesture {
                    self.checked.toggle()
                }
            Text("Yes, I udnderstand and agree to the FindTask Terms of Service, including the User Agreement and Privacy Policy.")
                .font(.system(size: 12))
        }.padding(10)
    }
}

struct SignUpButton: View {
    @EnvironmentObject var sessionManager : SessionManager
    
    @Binding var givenName: String
    @Binding var familyName: String
    @Binding var phoneNumber: String
    @Binding var password: String
    
    var body: some View {
        Button(action: {
            sessionManager.signUp(givenName: givenName,  familyName: familyName ,phoneNumber: phoneNumber, password: password)
        }){
            Text("Sign Up")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .frame(width: 350, height: 40.0)
                .background(Color.orange)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding(10)
        }

        Button("Already have an account? Log in.", action: {
            sessionManager.showLogin()
        })
    }
}


struct SignUpContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
