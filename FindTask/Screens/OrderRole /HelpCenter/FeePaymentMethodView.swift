//
//  FeePaymentMethodView.swift
//  FindTask
//
//  Created by Dixon Chu on 01/03/2022.
//

import SwiftUI

struct FeePaymentMethodView: View {
    var body: some View {
        VStack{
            List{
                NavigationLink{
                    HelpAdditionalFeeView()
                        .navigationTitle("Fee, Payments and Methods")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("What additional services require extra fees?")
                            .foregroundColor(.primary)
                    }
                }
                
                
                NavigationLink{
                    HelpPaymentMethodView()
                        .navigationTitle("Fee, Payments and Methods")
                        .navigationBarTitleDisplayMode(.inline)
                }label: {
                    VStack(alignment: .leading, spacing: 2){
                        Text("What are the payment methods?")
                            .foregroundColor(.primary)
                    }
                }
                
            }.listStyle(PlainListStyle())
        }
    }
}

struct HelpAdditionalFeeView: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("What additional services require extra fees?")
                .font(.title)
            Text("When selecting your task, you will be able to see the additional services you can request and the cost associated next to it.")
            Spacer()
        }.padding()
    }
}

struct HelpPaymentMethodView: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("What are the payment methods?")
                .font(.title)
            Text("Pay the worker the exact amount in cash after the completion of the task.")
            Spacer()
        }.padding()
    }
}

struct FeePaymentMethodView_Previews: PreviewProvider {
    static var previews: some View {
        FeePaymentMethodView()
    }
}
