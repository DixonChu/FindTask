//
//  BaseView.swift
//  FindTask
//
//  Created by Dixon Chu on 23/02/2022.
//

import SwiftUI
import Amplify

struct BaseView: View {
    let user: AuthUser
    
    @State var showMenu: Bool = false
    @State private var isLoading = false
    @State var currentTab = "Home"
    
    
    // Offset of both drag gesture and showing menu
    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    
    var body: some View {
        
        let sideBarWidth = getRect().width - 90
        
        // Whole Navigation
        NavigationView{
            HStack(spacing: 0){
                SideMenu(showMenu: $showMenu)
                
                // Main Tab View
                VStack(spacing: 0){
                        Home(showMenu: $showMenu)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("house")
                    
                }
                .frame(width: getRect().width)
                .overlay(
                    Rectangle()
                        .fill(
                            Color.primary
                                .opacity(Double((offset /
                                                 sideBarWidth) / 5))
                        )
                        .ignoresSafeArea(.container, edges: .vertical)
                        .onTapGesture {
                            withAnimation{
                                showMenu.toggle()
                            }
                        }
                )
            }
            .frame(width: getRect().width + sideBarWidth)
            .offset(x: -sideBarWidth / 2)
            .offset(x: offset > 0 ? offset : 0)
            .gesture(
                DragGesture()
                    .updating($gestureOffset, body: {value, out, _ in out = value.translation.width})
                    .onEnded(onEnd(value: ))
            )
            // No Nav bar title
            // Hiding nav bar
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
        .animation(.easeOut, value: offset == 0)
        .onChange(of: showMenu) { newValue in
            if showMenu && offset == 0{
                offset = sideBarWidth
                lastStoredOffset = offset
            }
            
            if !showMenu && offset == sideBarWidth {
                offset = 0
                lastStoredOffset = offset
            }
            
        }
        .onChange(of: gestureOffset){ newValue in
            onChange()
            
        }
    }
    
    func onChange(){
        let sideBarWidth = getRect().width - 90
        offset = (gestureOffset != 0) ? (gestureOffset + lastStoredOffset < sideBarWidth ? gestureOffset + lastStoredOffset : offset) : offset
        
    }
    
    func onEnd(value: DragGesture.Value){
        let sideBarWidth = getRect().width - 90
        let translation = value.translation.width
        
        withAnimation{
            if translation > 0 {
                if translation > (sideBarWidth / 2){
                    offset = sideBarWidth
                    showMenu = true
                }else{
                    if offset == sideBarWidth{
                        return
                    }
                    offset = 0
                    showMenu = false
                }
            }
            else {
                if -translation > (sideBarWidth / 2) {
                    offset = 0
                    showMenu = false
                } else {
                    if offset == 0 || !showMenu{
                        return
                    }
                    offset = sideBarWidth
                    showMenu = true
                }
            }
        }
        
        lastStoredOffset = offset
    }
    
    
//    func StartCheckNetworkCall() {
//        isLoading = true
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            isLoading = true
//        }
//    }
}


//struct LoadingView: View {
//    var body: some View{
//        ZStack{
//            Color(.systemBackground)
//                .ignoresSafeArea()
//            ProgressView()
//                .progressViewStyle(CircularProgressViewStyle(tint: .orange))
//                .scaleEffect(3)
//        }
//    }
//}

struct BaseView_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    
    static var previews: some View {
        BaseView(user: DummyUser())
    }
}
