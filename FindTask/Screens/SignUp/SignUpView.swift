//
//  SignUpContentView.swift
//  FindTask
//
//  Created by Dixon Chu on 17/02/2022.
//
import Amplify
import Combine
import AWSMobileClient
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
                .fontWeight(.semibold)
            
            Divider()
                .frame(width: 250, height: 1.0)
            
            Spacer()
            
            SignUpField(givenName: $givenName, familyName: $familyName, phoneNumber: $phoneNumber, password: $password)
                        
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
            
            HStack{
                VStack(alignment: .leading, spacing: 0){
                    Text("First name")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    TextField("Will", text: $givenName)
                        .padding()
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                }
                
                
                VStack(alignment: .leading, spacing: 0){
                    Text("Family name")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    TextField("Smith", text: $familyName)
                        .padding()
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                    
                }
                
            }
            
            Text("Phone number")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            HStack{
                TextField("+441234567890", text: $phoneNumber)
                    .padding()
                    .keyboardType(.phonePad)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            }
            
            
            Text("Password")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            HStack{
                
                SecureField("Password@123", text: $password)
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
            }
            
            Text("Your pasword must be at least six characters and should include a combination of numbers, letters, and special characters (!$@%).")
                .font(.system(size: 12))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
            
        }.padding(20)
    }
}

struct SignUpButton: View {
    @EnvironmentObject var sessionManager : SessionManager
    
    @Binding var givenName: String
    @Binding var familyName: String
    @Binding var phoneNumber: String
    @Binding var password: String
    
    @State private var showAlert = false
    @State private var message = ""
    
    let passPattern = #"(?=.{8,})"# + #"(?=.*[A-Z])"# + #"(?=.*[a-z])"# + #"(?=.*\d)"# + #"(?=.*[ !$%&?._-])"#
    
    var body: some View {
        Button(action: {
            if(!givenName.isEmpty && !familyName.isEmpty && !phoneNumber.isEmpty && !password.isEmpty){

                signUp(givenName: givenName, familyName: familyName ,phoneNumber: phoneNumber, password: password)
                
            } else {
                message = "Either you did fill in all the fields or password does not meet the requirements."
                showAlert = true
            }
        }){
            Text("Sign Up")
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

        Button("Already have an account? Sign in.", action: {
            sessionManager.showLogin()
        })
    }
    
    func signUp(givenName: String, familyName: String, phoneNumber: String, password: String) {
        let attributes = [AuthUserAttribute(.phoneNumber, value: phoneNumber), AuthUserAttribute(.familyName, value: familyName), AuthUserAttribute(.givenName, value: givenName)]
        let options = AuthSignUpRequest.Options(userAttributes: attributes)
        
        _ = Amplify.Auth.signUp(username: phoneNumber, password: password ,options: options)
        {
            result in
            
            switch result {
                
            case .success(let signUpResult):
                print("Sign up result: ", signUpResult)
                switch signUpResult.nextStep {
                    
                case .done:
                    print("Finished sign up")
                case .confirmUser(let details, _):
                    print(details ?? "no details")
                    
                    DispatchQueue.main.async {
                        sessionManager.authState = .confirmCode(phone: phoneNumber)
                    }
                }
            case .failure(let error):
                message = "\(error)"
                showAlert = true
                print("Sign up error", error)
            }
        }
    }
    
}


struct SignUpContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView().environmentObject(SessionManager())
    }
}
