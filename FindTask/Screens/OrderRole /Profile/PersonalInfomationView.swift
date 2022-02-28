//
//  PersonalInfomationView.swift
//  FindTask
//
//  Created by Dixon Chu on 22/02/2022.
//

import SwiftUI

struct PersonalInfomationView: View {
    var body: some View {
        VStack{
            Divider()
            PersonalInfoList()
            Spacer()
        }
        
    }
}

struct PersonalInfoList: View {
    @EnvironmentObject var sessionManager : SessionManager
    
    var body: some View{
        VStack(alignment: .leading, spacing: 15){
            HStack{
                Button("Profile Picture", action: {})
                    .foregroundColor(.black)
        
                Spacer()
                // User profile pic
                Image(systemName: "person")
                Image(systemName: "chevron.right")
            }
            .frame(width: 350, height: 50, alignment: .leading)

            Divider()
            
            HStack{
                Button("First Name", action: {})
                    .foregroundColor(.black)
                Spacer()
                // User first name
                
                Text("Dixon")
                Image(systemName: "chevron.right")
            }
            .frame(width: 350, height: 50, alignment: .leading)
            
            Divider()
            
            HStack{
                Button("Mobile Number", action: {})
                    .foregroundColor(.black)
                Spacer()
                // User phone number
                Text("********825")
                Image(systemName: "chevron.right")
            }
            .frame(width: 350, height: 50, alignment: .leading)

            Divider()
            
            HStack {
                Button("Email", action: {})
                    .foregroundColor(.black)
                Spacer()
                // User email if exist else display not added
                Text("dkc2@aber.ac.uk")
                Image(systemName: "chevron.right")
            }
            .frame(width: 350, height: 50, alignment: .leading)

            Divider()
            
        }.padding(20)
    }
}



struct PersonalInfomationView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfomationView()
    }
}
