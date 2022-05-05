//
//  graphql.swift
//  FindTask
//
//  Created by Dixon Chu on 15/04/2022.
//

import Foundation
import Amplify
import AWSPluginsCore

class Graphql: ObservableObject {
    @Published var awaitingTasks: [Task] = [] //task status awaiting
    
    @Published var userOwnTasks: [Task] = [] // taskStatus awaiting/accepeted, taskOwner
    @Published var completedTasks: [Task] = [] // task status completed, taskowner
    @Published var cancalledTasks: [Task] = [] // task status cancelled, taskownere
    
    @Published var workOngoingTasks: [Task] = [] //task status accepted, acceptedId
    @Published var workCompletedTasks: [Task] = [] // task status completed, acceptedId
    @Published var workCancelledTasks: [Task] = [] // task status cancelled, accepetedId
    
    @Published var userName: String = ""
    @Published var userPhoneNum: String = ""
    @Published var userId: String = ""
    
    
    var currentPage: List<Task>?

//    init(){
//    }
    
    /* ========== All Owner Task ========== */
    func listAllOwnerTask(taskOwner: String) {
        let task = Task.keys
        let predicate = (task.taskStatus == "awaiting" || task.taskStatus == "accepted") && task.taskOwner == taskOwner
        
        Amplify.API.query(request: .paginatedList(Task.self, where: predicate, limit: 1000)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let tasks):
                    DispatchQueue.main.async {
                        if !self.userOwnTasks.isEmpty {
                            self.userOwnTasks.removeAll()
                        }
                        self.currentPage = tasks
                        self.userOwnTasks.append(contentsOf: tasks)
                    }
                    self.ownListNextPageRecursively()
                    print("Successfully retrieved list of tasks: \(tasks)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    func ownListNextPageRecursively() {
        if let current = currentPage, current.hasNextPage() {
            current.getNextPage { result in
                switch result {
                case .success(let tasks):
                    self.userOwnTasks.append(contentsOf: tasks)
                    self.currentPage = tasks
                    self.ownListNextPageRecursively()
                case .failure(let coreError):
                    print("Failed to get next page \(coreError)")
                }
            }
        }
    }
    
    /* ========== All Completed Task ========== */
    func listAllCompletedTask(taskOwner: String){
        let task = Task.keys
        let predicate = task.taskStatus == "completed" && task.taskOwner == taskOwner
        
        Amplify.API.query(request: .paginatedList(Task.self, where: predicate, limit: 1000)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let tasks):
                    DispatchQueue.main.async {
                        if !self.completedTasks.isEmpty {
                            self.completedTasks.removeAll()
                        }
                        self.currentPage = tasks
                        self.completedTasks.append(contentsOf: tasks)
                    }
                    self.completedListNextPageRecursively()
                    
                    print("Successfully retrieved list of tasks: \(tasks)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    func completedListNextPageRecursively() {
        if let current = currentPage, current.hasNextPage() {
            current.getNextPage { result in
                switch result {
                case .success(let tasks):
                    self.completedTasks.append(contentsOf: tasks)
                    self.currentPage = tasks
                    self.completedListNextPageRecursively()
                case .failure(let coreError):
                    print("Failed to get next page \(coreError)")
                }
            }
        }
    }
    
    /* ========== All Cancelled Task ========== */
    func listAllCancelledTask(taskOwner: String){
        let task = Task.keys
        let predicate = task.taskStatus == "cancelled" && task.taskOwner == taskOwner
        
        Amplify.API.query(request: .paginatedList(Task.self, where: predicate, limit: 1000)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let tasks):
                    DispatchQueue.main.async {
                        if !self.cancalledTasks.isEmpty {
                            self.cancalledTasks.removeAll()
                        }
                        self.currentPage = tasks
                        self.cancalledTasks.append(contentsOf: tasks)
                    }
                    self.cancelledListNextPageRecursively()
                    print("Successfully retrieved list of tasks: \(tasks)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    func cancelledListNextPageRecursively() {
        if let current = currentPage, current.hasNextPage() {
            current.getNextPage { result in
                switch result {
                case .success(let tasks):
                    self.cancalledTasks.append(contentsOf: tasks)
                    self.currentPage = tasks
                    self.cancelledListNextPageRecursively()
                case .failure(let coreError):
                    print("Failed to get next page \(coreError)")
                }
            }
        }
    }
    
    /* ========== Work Ongoing Task ========== */
    func workListAllOngoingTask(acceptedId: String){
        let task = Task.keys
        print("Accepted ID \(acceptedId)")
        let predicate = task.taskStatus == "accepted" && task.acceptedId == acceptedId
        
        Amplify.API.query(request: .paginatedList(Task.self, where: predicate, limit: 1000)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let tasks):
                    DispatchQueue.main.async {
                        if !self.workOngoingTasks.isEmpty{
                            self.workOngoingTasks.removeAll()
                        }
                        self.currentPage = tasks
                        self.workOngoingTasks.append(contentsOf: tasks)
                    }
                    self.workOngoingListNextPageRecursively()
                    print("Successfully retrieved list of tasks: \(tasks)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    func workOngoingListNextPageRecursively() {
        if let current = currentPage, current.hasNextPage() {
            current.getNextPage { result in
                switch result {
                case .success(let tasks):
                    self.workOngoingTasks.append(contentsOf: tasks)
                    self.currentPage = tasks
                    self.workOngoingListNextPageRecursively()
                case .failure(let coreError):
                    print("Failed to get next page \(coreError)")
                }
            }
        }
    }
    
    /* ========== Work Completed Task ========== */
    func workListAllCompletedTask(acceptedId: String){
        let task = Task.keys
        let predicate = task.taskStatus == "completed" && task.acceptedId == acceptedId
        
        Amplify.API.query(request: .paginatedList(Task.self, where: predicate, limit: 1000)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let tasks):
                    DispatchQueue.main.async {
                        if !self.workCompletedTasks.isEmpty {
                            self.workCompletedTasks.removeAll()
                        }
                        self.currentPage = tasks
                        self.workCompletedTasks.append(contentsOf: tasks)
                    }
                    self.workCompletedListNextPageRecursively()
                    
                    print("Successfully retrieved list of tasks: \(tasks)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    func workCompletedListNextPageRecursively() {
        if let current = currentPage, current.hasNextPage() {
            current.getNextPage { result in
                switch result {
                case .success(let tasks):
                    self.workCompletedTasks.append(contentsOf: tasks)
                    self.currentPage = tasks
                    self.workCompletedListNextPageRecursively()
                case .failure(let coreError):
                    print("Failed to get next page \(coreError)")
                }
            }
        }
    }
    
    /* ========== Work Cancelled Task ========== */
    func workListAllCancelledTask(acceptedId: String){
        let task = Task.keys
        let predicate = task.taskStatus == "cancelled" && task.acceptedId == acceptedId
        
        Amplify.API.query(request: .paginatedList(Task.self, where: predicate, limit: 1000)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let tasks):
                    DispatchQueue.main.async {
                        if !self.workCancelledTasks.isEmpty {
                            self.workCancelledTasks.removeAll()
                        }
                        self.currentPage = tasks
                        self.workCancelledTasks.append(contentsOf: tasks)
                    }
                    self.workCancelledListNextPageRecursively()
                    print("Successfully retrieved list of tasks: \(tasks)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    func workCancelledListNextPageRecursively() {
        if let current = currentPage, current.hasNextPage() {
            current.getNextPage { result in
                switch result {
                case .success(let tasks):
                    self.workCancelledTasks.append(contentsOf: tasks)
                    self.currentPage = tasks
                    self.workCancelledListNextPageRecursively()
                case .failure(let coreError):
                    print("Failed to get next page \(coreError)")
                }
            }
        }
    }
    
    /* ========== Worker ==========*/
    /* ========== All Awaiting Task ========== */
    func listAllAwaitingTask(sessionUserId: String) {
        let task = Task.keys
        let predicate = task.taskStatus == "awaiting" && task.taskOwner != sessionUserId
        
        Amplify.API.query(request: .paginatedList(Task.self, where: predicate, limit: 1000)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let tasks):
                    DispatchQueue.main.async {
                        if !self.awaitingTasks.isEmpty {
                            self.awaitingTasks.removeAll()
                        }
                        self.currentPage = tasks
                        self.awaitingTasks.append(contentsOf: tasks)
                    }
                    self.awaitingListNextPageRecursively()
                    print("Successfully retrieved list of tasks: \(tasks)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    func awaitingListNextPageRecursively() {
        if let current = currentPage, current.hasNextPage() {
            current.getNextPage { result in
                switch result {
                case .success(let tasks):
                    self.awaitingTasks.append(contentsOf: tasks)
                    self.currentPage = tasks
                    self.awaitingListNextPageRecursively()
                case .failure(let coreError):
                    print("Failed to get next page \(coreError)")
                }
            }
        }
    }
    
    /* ========== Create Task ========== */
    func createTask(taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Float, taskDate: String, taskOwner: String){
        let task = Task(taskTitle: taskTitle, taskDescription: taskDescription, taskLocation: taskLocation, taskPrice: Double(taskPrice), taskStatus: "awaiting", taskDate: taskDate, taskOwner: taskOwner, acceptedId: "pending")
        Amplify.API.mutate(request: .create(task)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let task):
                    print("Successfully created task: \(task)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    /* ========== Create User ========== */
    func createUser(id: String, givenName: String, familyName: String, phoneNumber: String) {
        let user = User(id: id, givenName: givenName, familyName: familyName, phoneNumber: phoneNumber);
        Amplify.API.mutate(request: .create(user)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let user):
                    print("Successfully added user to database: \(user)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    /* ========== Get Task By ID ========== */
    func getTaskById(taskId: String) {
        Amplify.API.query(request: .get(Task.self, byId: taskId)) { event in
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
    
    /* ========== Get Task By Id And Update Task Status (cancelled or completed) ========== */
    func getTaskByIdAndUpdateStatus(taskId: String, taskStatus: String) {
        Amplify.API.query(request: .get(Task.self, byId: taskId)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let task):
                    guard let task = task else {
                        print("Could not find task")
                        return
                    }
                    print("Successfully retrieved task: \(task)")
                    if(taskStatus == "cancelled"){
                        print("Successfully cancelled task")
                        self.updateTaskToCancelled(task: task)
                        self.awaitingTasks.removeAll()
                    }
                    if(taskStatus == "completed"){
                        print("Successfully completed task")
                        self.updateTaskToCompleted(task: task)
                        self.awaitingTasks.removeAll()
                    }
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    func updateTaskToCancelled(task: Task){
        var task = Task(id: task.id, taskTitle: task.taskTitle, taskDescription: task.taskDescription, taskLocation: task.taskLocation, taskPrice: task.taskPrice, taskStatus: task.taskStatus, taskDate: task.taskDate, taskOwner: task.taskOwner, acceptedId: task.acceptedId)
        task.taskStatus = "cancelled"
        Amplify.API.mutate(request: .update(task)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let task):
                    print("Successfully updated task: \(task)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    func updateTaskToCompleted(task: Task){
        var task = Task(id: task.id, taskTitle: task.taskTitle, taskDescription: task.taskDescription, taskLocation: task.taskLocation, taskPrice: task.taskPrice, taskStatus: task.taskStatus, taskDate: task.taskDate, taskOwner: task.taskOwner, acceptedId: task.acceptedId)
        task.taskStatus = "completed"
        Amplify.API.mutate(request: .update(task)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let task):
                    print("Successfully updated task: \(task)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    func updateTaskToAccepted(task: Task, acceptedId: String){
        var task = Task(id: task.id, taskTitle: task.taskTitle, taskDescription: task.taskDescription, taskLocation: task.taskLocation, taskPrice: task.taskPrice, taskStatus: task.taskStatus, taskDate: task.taskDate, taskOwner: task.taskOwner, acceptedId: task.taskOwner)
        task.taskStatus = "accepted"
        task.acceptedId = acceptedId
        Amplify.API.mutate(request: .update(task)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let task):
                    print("Successfully updated task: \(task)")
                    DispatchQueue.main.async {
                        self.getUserById(userId: task.taskOwner)
                        self.awaitingTasks.removeAll()
                    }
                    case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    func getUserById(userId: String) {
        Amplify.API.query(request: .get(User.self, byId: userId)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let user):
                    guard let user = user else {
                        print("Could not find user")
                        return
                    }
                    print("Successfully retrieved user: \(user)")
                    DispatchQueue.main.async {
                        self.userName = user.givenName
                        self.userPhoneNum = user.phoneNumber
                    }
                    case .failure(let error):
                    print("USER: Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    //    func getTaskByIdAndUpdateStatusAccepted(taskId: String, taskStatus: String, acceptedId: String) {
    //        Amplify.API.query(request: .get(Task.self, byId: taskId)) { event in
    //            switch event {
    //            case .success(let result):
    //                switch result {
    //                case .success(let task):
    //                    guard let task = task else {
    //                        print("Could not find task")
    //                        return
    //                    }
    //                    print("Successfully retrieved task: \(task)")
    //                    self.updateTaskToAccepted(task: task, acceptedId: acceptedId)
    //                    self.awaitingTasks.removeAll()
    //                case .failure(let error):
    //                    print("Got failed result with \(error.errorDescription)")
    //                }
    //            case .failure(let error):
    //                print("Got failed event with error \(error)")
    //            }
    //        }
    //    }
    
    //  Delete task
    //    func deleteTask(task: Task){
    //        Amplify.API.mutate(request: .delete(task)) { event in
    //            switch event {
    //            case .success(let result):
    //                switch result {
    //                case .success(let task):
    //                    print("Successfully deleted task: \(task)")
    //                case .failure(let error):
    //                    print("Got failed result with \(error.errorDescription)")
    //                }
    //            case .failure(let error):
    //                print("Got failed event with error \(error)")
    //            }
    //        }
    //    }
    
}
