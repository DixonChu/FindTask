//
//  HelpCenterView.swift
//  FindTask
//
//  Created by Dixon Chu on 22/02/2022.
//

import SwiftUI

struct HelpCenterView: View {
    var body: some View {
        VStack{
            Divider()
            Spacer()
            HelpCenterList()
            
            Spacer()
        }
    }
}

struct HelpCenterList: View {
    var body: some View{
        NavigationView{
            NavigationLink{
                PlacingOrderHelpView()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle("Placing an Order")
            } label: {
                PlaceAnOrderButton()
            }
            
        }
        
        
    }
}

struct PlaceAnOrderButton: View {
    var body: some View{
        HStack{
            Image(systemName: "list.bullet.rectangle.portrait")
            Text("Placing an Order")
            //            Button("Placing an Order", action: {})
        }
    }
}

struct OrderEditAndCancellation: View {
    var body: some View{
        HStack{
            Image(systemName: "pencil")
            Button("Order Edit and Cancellation", action: {})
        }
    }
}

struct HelpCenterView_Previews: PreviewProvider {
    static var previews: some View {
        HelpCenterView()
    }
}


//PlaceAnOrderButton()
//
//Divider()
//
//OrderEditAndCancellation()
//
//Divider()
//
//HStack{
//    Image(systemName: "dollarsign.circle")
//    Button("Fee, Payments and Methods", action: {})
//}
//
//Divider()
//
//HStack{
//    Image(systemName: "exclamationmark.triangle")
//    Button("Order Issues", action: {})
//}
//
//Divider()
//
//HStack{
//    Image(systemName: "person")
//    Button("Profile and Account", action: {})
//}
//
//Divider()
//
////            HStack{
////                Image(systemName: "info.circle")
////                Button("General Information", action: {})
////            }
