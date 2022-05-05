//
//  ProfileAccountView.swift
//  FindTask
//
//  Created by Dixon Chu on 01/03/2022.
//

import SwiftUI

struct ProfileAccountView: View {
    var body: some View {
        VStack{
            List{
                NavigationLink{
                    ForgetPasswordView()
                        .navigationTitle("Profile and Account")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("I forgot my password")
                            .foregroundColor(.primary)
                    }
                }
                
                
                    NavigationLink{
                        HelpResetPasswordView()
                            .navigationTitle("Profile and Account")
                            .navigationBarTitleDisplayMode(.inline)
                    }label: {
                        VStack(alignment: .leading, spacing: 2){
                            Text("How to reset my password?")
                                .foregroundColor(.primary)
                        }
                    }


                    NavigationLink{
                        UpdatePhoneNumberView()
                            .navigationTitle("Profile and Account")
                            .navigationBarTitleDisplayMode(.inline)
                    }label: {
                        VStack(alignment: .leading, spacing: 2){
                            Text("How to update my mobile number?")
                                .foregroundColor(.primary)
                        }
                    }


                    NavigationLink{
                        HowToRegisterAnAccountView()
                            .navigationTitle("Profile and Account")
                            .navigationBarTitleDisplayMode(.inline)
                    }label: {
                        VStack(alignment: .leading, spacing: 2){
                            Text("How to register an account?")
                                .foregroundColor(.primary)
                        }
                    }
            }.listStyle(PlainListStyle())
        }
    }
}

struct ForgetPasswordView: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("I forgot my password")
                .font(.title)
            Text("If you have forgotten your password, simply click the \"Forgot Password\" button and imput your phone number that is registered to your account, a new password and click the \"Get Code\" button to get a code.")
            Spacer()
        }.padding()
    }
}

struct HelpResetPasswordView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to reset my password?")
                .font(.title)
            Text("You can reset your password by going to Settings -> Change Password.")
            Spacer()
        }.padding()
    }
}

struct UpdatePhoneNumberView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to update my mobile number?")
                .font(.title)
            Text("You can contact our Customer Service Team to change your mobile number.")
            Spacer()
        }.padding()
    }
}

struct HowToRegisterAnAccountView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("How to register an account?")
                .font(.title)
            Text("Simply click the \"Don't have an account? Sign Up\" button on the sign-in page and you may register an account with your mobile.")
            Spacer()
        }.padding()
    }
}

struct ProfileAccountView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAccountView()
    }
}
