//
//  WelcomeScreenContentView.swift
//  FindTask
//
//  Created by Dixon Chu on 13/02/2022.
//

import SwiftUI

struct WelcomeScreenContentView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                VStack{
                    Text("Welcome to FindTask")
                        .fontWeight(.medium)
                }.padding(50)
                
                Spacer()
                
                InfomationStack().padding(20)
                Spacer()
                
                NavigationLink(destination: LogInView()){
                    GetStartedButtonView()
                }
            }
        }.padding(.bottom, 10)
    }
    
}


struct InfomationStack: View {
    var body: some View{
        VStack{
            Text("What can you do in Find Task")
            
        }
    }
}

struct GetStartedButtonView: View {
    var body: some View {
        Text("Get Started")
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .frame(width: 350, height: 40.0)
            .background(Color.orange)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(10)
    }
}

struct WelcomeScreenContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenContentView()
    }
}
