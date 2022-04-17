//
//  graphql.swift
//  FindTask
//
//  Created by Dixon Chu on 15/04/2022.
//

import Foundation
import Amplify
import AWSPluginsCore

final class Graphql: ObservableObject {
    static let shared = Graphql()
    
    @Published var listOfTasks = []
    

    // Create task
    func createTask(taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Float, taskDate: String){
        let task = Task(taskTitle: taskTitle, taskDescription: taskDescription, taskLocation: taskLocation, taskPrice: Double(taskPrice), taskStatus: "awaiting", taskDate: taskDate, acceptedId: "pending")
        Amplify.API.mutate(request: .create(task)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let task):
                    print("Successfully created todo: \(task)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    
//    // Delete task by task id
//    func deleteTask(){
//        var task = Task()
//        Amplify.API.mutate(request: .delete(task)) { event in
//            switch event {
//            case .success(let result):
//                switch result {
//                case .success(let todo):
//                    print("Successfully created todo: \(todo)")
//                case .failure(let error):
//                    print("Got failed result with \(error.errorDescription)")
//                }
//            case .failure(let error):
//                print("Got failed event with error \(error)")
//            }
//        }
//    }

    
    // Get task by task id
    func getTaskById() {
        Amplify.API.query(request: .get(Task.self, byId: "AF0CE5D9-295B-4229-B1CB-7F22DCE5A9F4")) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let task):
                    guard let task = task else {
                        print("Could not find task")
                        return
                    }
                    print("Successfully retrieved task: \(task)")
                    
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    // Get list of tasks
//    func getListOfTasks(){
//        let task = Task.keys
//        let predicate = task.name == "my first todo" && task.description == "todo description"
//        Amplify.API.query(request: .paginatedList(Todo.self, where: predicate, limit: 1000)) { event in
//            switch event {
//            case .success(let result):
//                switch result {
//                case .success(let todos):
//                    print("Successfully retrieved list of todos: \(todos)")
//                case .failure(let error):
//                    print("Got failed result with \(error.errorDescription)")
//                }
//            case .failure(let error):
//                print("Got failed event with error \(error)")
//            }
//        }
//    }
    
}
