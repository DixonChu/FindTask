//
//  SideMenu.swift
//  FindTask
//
//  Created by Dixon Chu on 23/02/2022.
//

import SwiftUI
import Amplify

struct SideMenu: View {
    @EnvironmentObject var sessionManager : SessionManager
    
    @Binding var showMenu: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            VStack(alignment: .leading, spacing: 12){
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                
                Text(sessionManager.givenName)
                    .font(.title2.bold())
                
                Text(sessionManager.phoneNumber)
                    .font(.callout)
                
                Divider()
                
            }
            .padding(.horizontal)
            .padding(.leading)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    VStack(alignment: .leading, spacing: 25){
                        
                        NavigationLink{
                            PersonalInfomationView()
                                .navigationTitle("Personal Information")
                        } label: {
                            HStack{
                                Image(systemName: "person")
                                    .resizable()
                                    .renderingMode(.template)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.orange)
                                Text("Personal Information")
                            }
                        }
                        
                        NavigationLink{
                            OrderView()
                                .navigationTitle("Orders")
                                .navigationBarTitleDisplayMode(.inline)
                        } label: {
                            HStack{
                                Image(systemName: "clock.arrow.circlepath")
                                    .resizable()
                                    .renderingMode(.template)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.orange)
                                Text("Orders")
                            }
                        }
                        
                        NavigationLink{
                            HelpCenterView()
                                .navigationTitle("Help Center")
                        } label: {
                            HStack{
                                Image(systemName: "questionmark.circle")
                                    .resizable()
                                    .renderingMode(.template)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.orange)
                                Text("Help Center")
                            }
                        }
                        
                        NavigationLink{
                            SettingsView()
                                .navigationTitle("Settings")
                        } label: {
                            HStack{
                                Image(systemName: "gear")
                                    .resizable()
                                    .renderingMode(.template)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.orange)
                                Text("Settings")
                            }
                            
                        }
                        
                        NavigationLink{
                            LocationView()
                                .navigationTitle("Location")
                        } label: {
                            HStack{
                                Image(systemName: "mappin.circle")
                                    .resizable()
                                    .renderingMode(.template)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.orange)
                                Text("Location")
                            }
                        }
                        
                    }
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .padding(.leading)
                    .padding(.top, 20)
                                        
//                    NavigationLink{
//                        LocationView()
//                            .navigationTitle("Location")
//                    } label: {
//                        HStack{
//                            Image(systemName: "mappin.circle")
////                                .resizable()
//                                .renderingMode(.template)
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 22, height: 22)
//                            Text("Location")
//                        }
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .foregroundColor(.primary)
//                        .padding()
//                        .padding(.leading)
//                    }
                }
            }
            
            Divider()
            
            NavigationLink{
                WorkView()
                    .navigationBarHidden(true)
            } label: {
                HStack{
                    Image(systemName: "rectangle.2.swap")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 20, height: 20)
                    Text("Switch to work")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.primary)
                .padding()
                .padding(.leading)
            }

        }
        .padding(.vertical)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(width: getRect().width - 90)
        .frame(maxHeight: .infinity)
        .background(
            Color.primary
                .opacity(0.04)
                .ignoresSafeArea(.container,edges: .vertical)
        )
        .frame(maxWidth: .infinity, alignment: .leading)
        
        
    }
    //    @ViewBuilder
    //    func TabButton(title: String, image: String) -> some View {
    //        NavigationLink{
    //            Text("\(title) View")
    //                .navigationTitle(title)
    //        } label: {
    //            HStack(spacing: 14){
    //                Image(systemName: image)
    //                    .resizable()
    //                    .renderingMode(.template)
    //                    .aspectRatio(contentMode: .fill)
    //                    .frame(width: 22, height: 22)
    //                Text(title)
    //            }
    //            .foregroundColor(.primary)
    //            .frame(maxWidth: .infinity, alignment: .leading)
    //        }
    //    }
}

struct SideMenu_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    
    static var previews: some View {
        BaseView(user: DummyUser())
    }
}


// Extenting View to get Screen Rect
extension View {
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
