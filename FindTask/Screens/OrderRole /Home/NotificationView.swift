//
//  NotificationView.swift
//  FindTask
//
//  Created by Dixon Chu on 28/04/2022.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
            Text("Notifications")
                .font(.system(size: 18))
                .fontWeight(.semibold)
                Spacer()
            }.padding()
            Spacer()
            Text("No noifications at the moment...")
            Spacer()
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
