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
            List{
                NavigationLink{
                    PlacingOrderHelpView()
                        .navigationTitle("Placing an Order")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack(spacing: 12){
                        Image(systemName: "list.bullet.rectangle.portrait")
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Placing an Order")
                            Text("Place order, track status, rate tasker")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }.foregroundColor(.primary)
                }
                NavigationLink{
                    OrderEditCancellationView()
                        .navigationTitle("Order, Edit and Cancellation")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack(spacing: 12){
                        Image(systemName: "pencil")
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Order, Edit and Cancellation")
                            Text("Edit order, cancel order")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }.foregroundColor(.primary)
                }
                
                NavigationLink{
                    FeePaymentMethodView()
                        .navigationTitle("Fee, Payments and Methods")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack(spacing: 12){
                        Image(systemName: "dollarsign.circle")
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Fee, Payments and Methods")
                            Text("Request receipt, select payment methods")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }.foregroundColor(.primary)
                }
                
                NavigationLink{
                    OrderIssueView()
                        .navigationTitle("Order Issues")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack(spacing: 12){
                        Image(systemName: "exclamationmark.triangle")
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Order Issues")
                            Text("No tasker matched, complaints")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }.foregroundColor(.primary)
                }
                
                NavigationLink{
                    ProfileAccountView()
                        .navigationTitle("Profile and Account")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack(spacing: 12){
                        Image(systemName: "person")
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Profile and Account")
                            Text("Forgot password, update personal details")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }.foregroundColor(.primary)
                }
                
                NavigationLink{
                    SendFeedbackView()
                        .navigationTitle("Feedback")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    HStack(spacing: 12){
                        Image(systemName: "dot.radiowaves.up.forward")
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Send us Feedback")
                            Text("Tell us what you think")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }.foregroundColor(.primary)
                }
                
            }.listStyle(PlainListStyle())
        }
    }
}


struct HelpCenterView_Previews: PreviewProvider {
    static var previews: some View {
        HelpCenterView()
    }
}
