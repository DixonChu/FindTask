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
    @State var taskPrice = 0
    
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
                
                Divider()
            }
            .overlay(
                Text("FindTask")
                    .fontWeight(.semibold)
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
            }
        }
    }
}

struct HomePageContent : View {
    @Binding var taskHeadline : String
    @Binding var taskDescription: String
    @Binding var taskLocation: String
    @Binding var taskPrice: Int

    var body: some View{
        VStack(alignment: .leading) {
            Text("Write a headline for your task")
            TextField("Headline for your task", text: $taskHeadline)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.2).foregroundColor(Color.black))

            Text("Task description")
            AutoSizingTF(hint: "Task description", text: $taskDescription)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.2).foregroundColor(Color.black))
                .frame(width: 350, height: 100)


            Text("Task Location")
            HStack(alignment: .center, spacing: 10){
                Image(systemName: "mappin.and.ellipse")
                TextField("Enter the task location", text: $taskLocation)
            }
            .padding(10)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.2).foregroundColor(Color.black))


            Text("Task price")
            HStack(alignment: .center, spacing: 10){
                Image(systemName: "dollarsign.circle")
                TextField("0", value: $taskPrice, formatter: NumberFormatter())
                    .foregroundColor(.gray)
                    .keyboardType(.phonePad)
            }
            .padding(10)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.2).foregroundColor(Color.black))
            .frame(width: 150, height: 45)

            Spacer()

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
