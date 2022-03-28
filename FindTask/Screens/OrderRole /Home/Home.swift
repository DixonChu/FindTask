//
//  Home.swift
//  FindTask
//
//  Created by Dixon Chu on 23/02/2022.
//

import SwiftUI
import Amplify

struct Home: View {
    @Binding var showMenu: Bool
    @State var taskHealine = ""
    @State var taskDescription = ""
    @State var taskLocation = ""
    @State var taskPrice = 0.00
    
    @State var keyboardOn = false
    @State private var keyboardHeight: CGFloat = 0
    
    
    var body: some View {
        VStack {
            VStack(spacing: 0){
                HStack{
                    Button{
                        withAnimation{
                            showMenu.toggle()
                        }
                    }label: {
                        Image(systemName: "line.horizontal.3")
                            .font(.system(size: 22))
                            .foregroundColor(.primary)
                    }
                    Spacer()
                    
                    NavigationLink{
                        Text("Notification View")
                            .navigationTitle("Notifications")
                    } label: {
                        Image(systemName: "bell")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .foregroundColor(.primary)
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
                
            }
            .overlay(
                Text("FindTask")
                    .font(.title3)
                    .fontWeight(.regular)
            )
            
            Spacer()
            
            HomePageContent(taskHeadline: $taskHealine, taskDescription: $taskDescription, taskLocation: $taskLocation, taskPrice: $taskPrice)
            Spacer()
            Button(action: {}){
                Text("Post Task")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(width: 350, height: 40.0)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(10)
            }.padding(.bottom, 12)
        }
        .ignoresSafeArea(.keyboard)
        .onTapGesture {
            hideKeyboard()
        }
    }
}

struct HomePageContent : View {
    @Binding var taskHeadline : String
    @Binding var taskDescription: String
    @Binding var taskLocation: String
    @Binding var taskPrice: Double
    
    @State private var taskDate = Date()
    
    var body: some View{
        VStack(alignment: .leading, spacing: 20) {
            
            VStack(alignment: .leading, spacing: 10){
                Text("Write a headline for your task")
                    .font(.headline)
                
                
                HStack{
                    TextField("A headline for your task...", text: $taskHeadline)
                        .foregroundColor(.primary)
                    
                    
                    Button(action: {}){
                        
                        Image(systemName: "alarm")
                            .foregroundColor(.orange)
                        Text("Now")
                            .foregroundColor(.orange)
                            .font(.callout)
                    }
                    
                }
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.1).foregroundColor(Color.primary))
            }
            
//            VStack(alignment: .leading, spacing: 10){
//                DatePicker("Date Time", selection: $taskDate)
//            }

            VStack(alignment: .leading, spacing: 10){
                
                Text("Task Location")
                    .font(.headline)
                
                TextField("Enter task location here...", text: $taskLocation)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.1).foregroundColor(Color.primary))
            }
            
            VStack(alignment: .leading, spacing: 10){
                
                Text("Task price")
                    .font(.headline)
                
                TextField("0", value: $taskPrice, formatter: NumberFormatter())
                    .keyboardType(.phonePad)
                
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.1).foregroundColor(Color.primary))
                    .frame(width: 150, height: 45)
            }
            
            
            VStack(alignment: .leading, spacing: 10){

                Text("Task description")
                    .font(.headline)

                TextEditor(text: $taskDescription)
                    .foregroundColor(.secondary)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.1).foregroundColor(Color.primary))

            }
            
        }.padding(20)
        
    }
}

struct Home_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    
    static var previews: some View {
        BaseView(user: DummyUser())
    }
}


// Support Function
struct AutoSizingTF: UIViewRepresentable {
    var hint: String
    @Binding var text : String
    
    func makeCoordinator() -> Coordinator {
        return AutoSizingTF.Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        
        textView.text = hint
        textView.textColor = .gray
        
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        var parent: AutoSizingTF
        
        init(parent: AutoSizingTF) {
            self.parent = parent
        }
        
        func textViewDidBeginEditing(_ textView: UITextView){
            if textView.text == parent.hint {
                textView.text = ""
                textView.textColor = UIColor(Color.primary)
            }
        }
        
        func textViewDidChange(_ textView: UITextView){
            parent.text = textView.text
        }
        
        func textViewDidEndEditing(_ textView: UITextView) {
            if textView.text == ""{
                textView.text = parent.hint
                textView.textColor = .gray
            }
        }
        
    }
    
}


