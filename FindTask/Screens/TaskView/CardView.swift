//
//  CardVkew.swift
//  FindTask
//
//  Created by Dixon Chu on 20/04/2022.
//

import SwiftUI

struct CardView: View {
    let task: Task
    var body: some View{
        VStack{
            VStack(alignment: .leading){
                HStack{
                    Text(task.taskTitle)
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text(task.taskDate)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                
                Divider()
                
                Text(task.taskDescription)
                    .fontWeight(.regular)
                    .font(.caption)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Text(task.id)
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                }
            }
            .layoutPriority(100)
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 0.5)
        )
        .padding([.top, .horizontal])
    }
}

struct CardInfoView: View {
    let task: Task
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            HStack{
                Image(systemName: "banknote")
                VStack(alignment: .leading){
                    Text("£ \(String(task.taskPrice))")
                        .fontWeight(.regular)
                    Text("Collect cash")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .foregroundColor(.secondary)
            }
            .layoutPriority(100)
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 0.5)
        )
        .padding([.top, .horizontal])
    }
}

struct ClientInfoCardView: View{
    let user: User
    var body: some View {
        VStack{
            HStack{
                Text("Client: \(user.phoneNumber)")
                Spacer()
                Image(systemName: "phone")
            }
            .layoutPriority(100)
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 0.5)
        )
        .padding([.top, .horizontal])

    }
}

//struct CardVkew_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
