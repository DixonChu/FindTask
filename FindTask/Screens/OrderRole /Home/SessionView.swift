////
////  SessionView.swift
////  FindTask
////
////  Created by Dixon Chu on 18/02/2022.
////
//
//import SwiftUI
//import Amplify
//
//struct SessionView: View {
//
//
//    let user: AuthUser
//
//    @State var width = UIScreen.main.bounds.width - 90
//    @State var x = -UIScreen.main.bounds.width + 90
//
//    @State var taskHealine = ""
//    @State var taskDescription = ""
//    @State var taskLocation = ""
//    @State var taskPrice = 0
//
//    var body: some View {
//        NavigationView{
//            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
//
//                TopBar(x: $x, taskHeadline: $taskHealine, taskDescription: $taskDescription, taskLocation: $taskLocation, taskPrice: $taskPrice)
//
//                SlideMenu()
//                    .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
//                    .offset(x: x)
//                    .background(Color.black.opacity(x == 0 ? 0.5 : 0).ignoresSafeArea(.all, edges: .vertical).onTapGesture {
//                        withAnimation{
//                            x = -width
//                        }
//                    })
//            }.onTapGesture {
//                self.hideKeyboard()
//            }
//        }
//    }
//}
//
//struct TopBar : View {
//    @Binding var x : CGFloat
//    @Binding var taskHeadline : String
//    @Binding var taskDescription: String
//    @Binding var taskLocation: String
//    @Binding var taskPrice: Int
//
//    var body: some View {
//
//            VStack{
//                HStack(spacing: 0){
//                    Button(action: {
//                        withAnimation{
//                            x = 0
//                        }
//                    }){
//                        Image(systemName: "line.horizontal.3")
//                            .font(.system(size: 18))
//                            .foregroundColor(Color.black)
//                    }
//
//                    Spacer(minLength: 0)
//
//                    Text("FindTask")
//                        .fontWeight(.bold)
//                        .font(.system(size: 18))
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(.black)
//
//                    Spacer(minLength: 0)
//                    NavigationLink {
//                     Text("Notifications")
//                            .navigationTitle("Notifications")
//                    } label: {
//                        Image(systemName: "bell")
//                            .font(.system(size: 18))
//                            .foregroundColor(.black)
//                    }
//
//                }
//                .padding()
//                .background(Color.white)
//                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
//
//                Spacer()
//
//                HomePageContent(taskHeadline: $taskHeadline, taskDescription: $taskDescription, taskLocation: $taskLocation, taskPrice: $taskPrice)
//
//
//                PostTask()
//
//
//
//        }
//    }
//}
//
//
//struct HomePageContent : View {
//    @Binding var taskHeadline : String
//    @Binding var taskDescription: String
//    @Binding var taskLocation: String
//    @Binding var taskPrice: Int
//
//    @State var text = ""
//
//    var body: some View{
//        VStack(alignment: .leading) {
//            Text("Write a headline for your task")
//            TextField("Headline for your task", text: $taskHeadline)
//                .padding(10)
//                .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.2).foregroundColor(Color.black))
//
//            Text("Task description")
//            AutoSizingTF(hint: "Task description", text: $taskDescription)
//                .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.2).foregroundColor(Color.black))
//                .frame(width: 350, height: 100)
//
//
//            Text("Task Location")
//            HStack(alignment: .center, spacing: 10){
//                Image(systemName: "mappin.and.ellipse")
//                TextField("Enter the task location", text: $taskLocation)
//            }
//            .padding(10)
//            .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.2).foregroundColor(Color.black))
//
//
//            Text("Task price")
//            HStack(alignment: .center, spacing: 10){
//                Image(systemName: "dollarsign.circle")
//                TextField("0", value: $taskPrice, formatter: NumberFormatter())
//                    .foregroundColor(.gray)
//                    .keyboardType(.phonePad)
//            }
//            .padding(10)
//            .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.2).foregroundColor(Color.black))
//            .frame(width: 150, height: 45)
//
//            Spacer()
//
//        }.padding(20)
//    }
//}
//
//
//struct PostTask : View {
//    var body: some View{
//        Button(action: {}){
//            Text("Post Task")
//                .foregroundColor(.white)
//                .fontWeight(.semibold)
//                .frame(width: 350, height: 40.0)
//                .background(Color.orange)
//                .clipShape(RoundedRectangle(cornerRadius: 5))
//                .padding(10)
//        }
//
//    }
//}
//
//
//
//struct SlideMenu: View {
//    var body: some View {
//        VStack(alignment: .leading, spacing: 0){
//            VStack(alignment: .leading, spacing: 14){
//                Image(systemName: "user")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 65, height: 65)
//                    .clipShape(Circle())
//
//                Text("First Name")
//                    .font(.title2.bold())
//
//                Text("+44 7447782825")
//                    .font(.callout)
//
//            }
//            .padding(.horizontal)
//            .padding(.leading)
//
//            ScrollView(.vertical, showsIndicators: false) {
//                VStack(alignment: .leading, spacing: 45){
//                    TabButton(title: "Order History", image: "clock.arrow.circlepath")
//                    TabButton(title: "Help Center", image: "questionmark.circle")
//                    TabButton(title: "Settings", image: "gear")
//                    TabButton(title: "Sign Out", image: "rectangle.portrait.and.arrow.right")
//                }
//                .padding()
//                .padding(.leading)
//                .padding(.top, 35)
//
//                Divider()
//                TabButton(title: "Location", image: "mappin.circle")
//                    .padding()
//                    .padding(.leading)
//                Divider()
//            }
//
//        }
//        .background(Color.white)
//        .padding(.vertical)
//        .frame(maxWidth: .infinity, alignment: .leading)
//        .frame(width: getRect().width - 90)
//        .frame(maxHeight: .infinity)
//        .background(
//            Color.primary.opacity(0.04).ignoresSafeArea(.container, edges: .vertical)
//        )
//        .frame(maxWidth: .infinity, alignment: .leading)
//    }
//    @ViewBuilder
//    func TabButton(title: String, image: String) -> some View {
//        Button {
//
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
//}
//
//
//
////struct MenuButton : View {
////    @EnvironmentObject var sessionManager : SessionManager
////
////    var body: some View{
////        NavigationView{
////        }
////Navigation Link
////        NavigationView{
////            HStack(spacing: 15){
////                // Add destination to OderHistoryView
////                NavigationLink(destination: OrderHistoryView()){
////                        Image(systemName: "clock.arrow.circlepath")
////                            .resizable()
////                            .renderingMode(.template)
////                            .frame(width: 24, height: 24)
////                            .foregroundColor(.black)
////
////                        Text("Order History")
////                            .foregroundColor(.black)
//////                            .navigationTitle("Order History")
////
////                    Spacer(minLength: 0)
////                }
////
////
////            }
////            .padding(.vertical, 12)
////        }
////
////            HStack(spacing: 15){
////                // Add destination to HelpCenterView
////                Button(action: {}){
////                    Image(systemName: "questionmark.circle")
////                        .resizable()
////                        .renderingMode(.template)
////                        .frame(width: 24, height: 24)
////                        .foregroundColor(.black)
////
////                    Text("Help Center")
////                        .foregroundColor(.black)
////                }
////
////                Spacer(minLength: 0)
////            }.padding(.vertical, 12)
////
////            HStack(spacing: 15){
////                // Add destination to SettingsView
////                Button(action: {}){
////                    Image(systemName: "gear")
////                        .resizable()
////                        .renderingMode(.template)
////                        .frame(width: 24, height: 24)
////                        .foregroundColor(.black)
////
////                    Text("Settings")
////                        .foregroundColor(.black)
////
////                }
////
////                Spacer(minLength: 0)
////            }.padding(.vertical, 12)
////
////            HStack(spacing: 15){
////                Button(action: {sessionManager.signOut()}){
////                    Image(systemName: "rectangle.portrait.and.arrow.right")
////                        .resizable()
////                        .renderingMode(.template)
////                        .frame(width: 24, height: 24)
////                        .foregroundColor(.black)
////
////                    Text("Sign Out")
////                        .foregroundColor(.black)
////
////                }
////                Spacer(minLength: 0)
////            }.padding(.vertical, 12)
////    }
////
////}
//
//
//
//// Support Function
//struct AutoSizingTF: UIViewRepresentable {
//    var hint: String
//    @Binding var text : String
//
//    func makeCoordinator() -> Coordinator {
//        return AutoSizingTF.Coordinator(parent: self)
//    }
//
//    func makeUIView(context: Context) -> UITextView {
//        let textView = UITextView()
//
//        textView.text = hint
//        textView.textColor = .gray
//
//        return textView
//    }
//
//    func updateUIView(_ uiView: UITextView, context: Context) {
//
//    }
//
//    class Coordinator: NSObject, UITextViewDelegate {
//        var parent: AutoSizingTF
//
//        init(parent: AutoSizingTF) {
//            self.parent = parent
//        }
//
//        func textViewDidBeginEditing(_ textView: UITextView){
//            if textView.text == parent.hint {
//                textView.text = ""
//                textView.textColor = UIColor(Color.primary)
//            }
//        }
//
//        func textViewDidChange(_ textView: UITextView){
//            parent.text = textView.text
//        }
//
//        func textViewDidEndEditing(_ textView: UITextView) {
//            if textView.text == ""{
//                textView.text = parent.hint
//                textView.textColor = .gray
//            }
//        }
//
//    }
//
//}
//
//
//
//
//struct SessionView_Previews: PreviewProvider {
//
//    private struct DummyUser: AuthUser {
//        let userId: String = "1"
//        let username: String = "dummy"
//    }
//
//    static var previews: some View {
//        SessionView(user: DummyUser())
//    }
//}
//
//
//// Extenting View to get Screen Rect
//extension View {
//    func getRect()->CGRect{
//        return UIScreen.main.bounds
//    }
//}
