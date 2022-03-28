//
//  OrderHistoryView.swift
//  FindTask
//
//  Created by Dixon Chu on 22/02/2022.
//

import SwiftUI

struct OrderView: View {
    
    @State var index = 1
    @State var offset: CGFloat = UIScreen.main.bounds.width

    @State var searchTask = ""
    var width = UIScreen.main.bounds.width
    
    var body: some View{
        VStack{
            AppBar(index: self.$index, offset: self.$offset, searchTask: $searchTask)
        
            GeometryReader{g in
                
                HStack(spacing: 0){
                    First()
                        .frame(width: g.frame(in: .global).width)
                    Second()
                        .frame(width: g.frame(in: .global).width)
                    Third()
                        .frame(width: g.frame(in: .global).width)
                }
                .offset(x: self.offset - self.width)
                .highPriorityGesture(DragGesture()
                                        .onEnded({(value) in
                    if value.translation.width > 50{
//                        print("right")
                        self.changeView(left: false)
                    }
                    
                    if -value.translation.width > 50{
//                        print("left")
                        self.changeView(left: true)
                    }
                }))
            }
        }
        .animation(.default)
        
    }
    
    func changeView(left: Bool){
        if left {
            if self.index != 3 {
                self.index += 1
            }
        } else {
            if self.index != 0 {
                self.index -= 1
            }
        }
        
        if self.index == 1{
            self.offset = self.width
        } else if self.index == 2{
            self.offset = 0

        } else{
            self.offset = -self.width

        }
        
    }
    
}


struct AppBar: View {
    @Binding var index: Int
    @Binding var offset: CGFloat
    @Binding var searchTask: String
    
    var width = UIScreen.main.bounds.width
    
    var body: some View{
        VStack(alignment: .leading, content: {
            ZStack{
                Rectangle()
                    .foregroundColor(Color(.systemGray6))
                
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField("Search", text: $searchTask)
                }
                .foregroundColor(.gray)
                .padding(.leading, 13)

            }
            .frame(height: 40)
            .cornerRadius(13)

            
            HStack{
                Button(action: {
                    self.index = 1
                    self.offset = self.width
                }){
                    VStack(spacing: 8){
                        HStack(spacing: 12){
                            Text("Ongoing")
                                .foregroundColor(self.index == 1 ? .primary : Color.primary.opacity(0.7))
                        }
                        Capsule()
                            .fill(self.index == 1 ? Color.primary : Color.clear)
                            .frame(height: 2)
                    }
                }
                
                Button(action: {
                    self.index = 2
                    self.offset = 0
                }){
                    VStack(spacing: 8){
                        HStack(spacing: 12){

                            Text("Completed")
                                .foregroundColor(self.index == 2 ? .primary : Color.primary.opacity(0.7))
                        }
                        Capsule()
                            .fill(self.index == 2 ? Color.primary : Color.clear)
                            .frame(height: 2)
                    }
                }
                
                Button(action: {
                    self.index = 3
                    self.offset = -self.width
                }){
                    VStack(spacing: 8){
                        HStack(spacing: 12){
                            Text("Cancelled")
                                .foregroundColor(self.index == 3 ? .primary : Color.primary.opacity(0.7))
                        }
                        Capsule()
                            .fill(self.index == 3 ? Color.primary : Color.clear)
                            .frame(height: 2)
                    }
                }
            }
        })
        .padding(.top, 15)
        .padding(.horizontal)
        .padding(.bottom, 10)
        .background(Color.white)
    }
}

struct First : View {
    var body: some View{
        GeometryReader{_ in
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 12){
                    Rectangle()
                        .strokeBorder(Color.black, lineWidth: 0.25)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 150)
                    
                }
            }
        }
        .padding()
        .padding(.bottom, 18)
    }
}


struct Second : View {
    var body: some View{
        GeometryReader{_ in
            VStack{
                Text("Second View")
            }
        }
        .background(Color.white)
    }
}


struct Third : View {
    var body: some View{
        GeometryReader{_ in
            VStack{
                Text("Third View")
            }
        }
        .background(Color.white)
    }
}



struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
