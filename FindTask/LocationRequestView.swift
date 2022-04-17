//
//  LocationRequestView.swift
//  FindTask
//
//  Created by Dixon Chu on 17/04/2022.
//

import SwiftUI

struct LocationRequestView: View {
    var body: some View {
        ZStack{
            Color(.systemBlue).ignoresSafeArea()
            VStack{
                Spacer()
                Image(systemName: "paperplane.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 32)
                
                Text("This app needs to access your location to works")
                    .font(.system(size: 28, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                VStack{
                    Button{
                        LocationManager.shared.requestLocation()
                    }label: {
                        Text("Allow Location")
                            .padding()
                            .font(.headline)
                            .foregroundColor(Color(.systemBlue))
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .padding(.horizontal, -32)
                    .background(Color.white)
                    .clipShape(Capsule())
                    .padding()
                    
                    Button{
                        
                    }label: {
                        Text("Maybe later")
                            .padding()
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    
                }.padding(.bottom)
            }
            .foregroundColor(.white)
        }
    }
}

struct LocationRequestView_Previews: PreviewProvider {
    static var previews: some View {
        LocationRequestView()
    }
}
