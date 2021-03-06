//
//  Home.swift
//  FindTask
//
//  Created by Dixon Chu on 23/02/2022.
//

import SwiftUI
import Amplify
import MapKit

struct Home: View {
    let user: AuthUser
    
    @State var taskHealine = ""
    @State var taskDescription = ""
    @State var taskLocation = ""
    @State var taskPrice = 5
    
    @State private var selectedTab = 0
    
    var body: some View {
        
            NavigationView{
        ZStack{
            TabView(selection: $selectedTab){
                HomePageContent(taskHeadline: $taskHealine, taskDescription: $taskDescription, taskLocation: $taskLocation, taskPrice: $taskPrice)
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                        
                    }.tag(1)
                
                
                // graphql.getTaskById(taskId: "AF0CE5D9-295B-4229-B1CB-7F22DCE5A9F4")
                OrderView()
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "list.bullet.rectangle.portrait")
                        Text("Orders")
                    }.tag(2)
                
                NotificationView()
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "bell")
                        Text("Notification")
                    }.tag(3)
                
                SettingsView(user: user)
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "gear")
                        Text("Settings")
                    }.tag(4)
                    
                PersonalInfomationView()
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "person")
                        Text("Profile")
                    }.tag(5)
                    
                
            }
            .onAppear(){
                UITabBar.appearance().barTintColor = .white
            }
            .accentColor(.primary)
            
        }
                
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomePageContent : View {
    @Binding var taskHeadline : String
    @Binding var taskDescription: String
    @Binding var taskLocation: String
    @Binding var taskPrice: Int
    @State private var taskDate = Date()
    
    @EnvironmentObject var sessionManager: SessionManager
    @EnvironmentObject var graphql: Graphql
    
    // Pop over
    @State private var showingPopover = false
    @State private var datePopOverIsVisible: Bool = false
    @State private var taskStatusPopOverIsVisible: Bool = false
    @State private var showAlert = false
    
    // Date formatter
    private let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E dd/MM HH:mm"
        return dateFormatter
    }()
    
    var body: some View{
//        NavigationView{
            VStack(alignment: .leading, spacing: 12) {
                // Heading
                HStack{
                    Spacer()
                    Text("FindTask")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(.orange)
                    Spacer()

                    
                }.padding(.bottom, 10)
                
                
                // Task headline
                VStack(alignment: .leading, spacing: 10){
                    Text("Write a headline for your task")
                        .font(.headline)
                    
                    HStack{
                        TextField("A headline for your task...", text: $taskHeadline)
                            .foregroundColor(.primary)
                        
                        // Pop over DatePicker
                        Button("\(dateFormatter.string(from: taskDate))"){
                            self.showingPopover = true
                            self.datePopOverIsVisible = true
                        }.popover(isPresented: $showingPopover){
                            // date popover
                            Text("Schedule a task")
                                .font(.headline)
                            
                            DatePicker("", selection: $taskDate, in: Date()..., displayedComponents: [.date, .hourAndMinute])
                                .datePickerStyle(WheelDatePickerStyle()).padding()
                            
                            Button(action: {
                                self.showingPopover = false
                                self.datePopOverIsVisible = false
                            }){
                                Text("Set")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .frame(width: 350, height: 40.0)
                                    .background(Color.orange)
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            }
                        }
                        
                    }
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.1).foregroundColor(Color.primary))
                }
                
                // Task location
                VStack(alignment: .leading, spacing: 10){
                    Text("Task Location")
                        .font(.headline)
                    
                    TextField("Enter address or remote", text: $taskLocation)
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.1).foregroundColor(Color.primary))
                    
                }
                
                // Task price
                VStack(alignment: .leading, spacing: 10){
                    
                    Text("Task price")
                        .font(.headline)
                    HStack{
                        TextField("5", value: $taskPrice, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.1).foregroundColor(Color.primary))
                            .frame(width: 150, height: 45)
                        if taskPrice < 5 {
                            HStack{
                                Image(systemName: "info.circle.fill")
                                
                                Text("??5 minimum")
                                    .font(.system(size: 12))
                                    .fontWeight(.medium)
                                
                            } .foregroundColor(.red)
                                .padding(.top, 15)
                        }
                    }
                }
                
                // Task description
                VStack(alignment: .leading, spacing: 10){
                    Text("Task description")
                        .font(.headline)
                    
                    TextEditor(text: $taskDescription)
                        .padding(10).accessibilityIdentifier("TextEditor")
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.1).foregroundColor(Color.primary))
                }
                
                // Post task
                Button(action: {
                    // DateTime format
                    if taskHeadline.isEmpty || taskDescription.isEmpty || taskLocation.isEmpty || (taskPrice < 5) {
                        print("add some task")
                        showAlert = true
                    } else{
//                        Create task and store it to database
                        graphql.createTask(taskTitle: taskHeadline, taskDescription: taskDescription, taskLocation: taskLocation, taskPrice: Float(taskPrice), taskDate: dateFormatter.string(from: taskDate), taskOwner: sessionManager.userID)
                        
                        taskHeadline = ""
                        taskLocation = ""
                        taskPrice = 5
                        taskDescription = ""
                    }
                }){
                    Text("Post Task")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(width: 350, height: 40.0)
                        .background(Color.orange)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }.padding(.bottom, 12)
                    .alert(isPresented: $showAlert){
                        Alert(title: Text("Post tasks failed"),
                              message: Text("Please fill in all the textfield"), dismissButton: Alert.Button.default(Text("OK"),  action:{
                            showAlert = false
                        }))
                    }
                
                
                
            }.padding()
//            .navigationTitle("FindTask")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarItems(
//                trailing:
//                    NavigationLink{Text("Notification View")
//                        .navigationTitle("Notifications")
//                    } label: {
//                        Image(systemName: "bell")
//                            .resizable()
//                            .renderingMode(.template)
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 22, height: 22)
//                            .foregroundColor(.primary)
//                    }
//                )
            .onTapGesture {
                    hideKeyboard()
        }
    }
    
}


struct Home_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    
    static var previews: some View {
        Home(user: DummyUser()).environmentObject(Graphql())
        //        BaseView(user: DummyUser()).environmentObject(API())
    }
}


