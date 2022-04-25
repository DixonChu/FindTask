// swiftlint:disable all
import Amplify
import Foundation

public struct Task: Model, Identifiable {
  public let id: String
  public var taskTitle: String
  public var taskDescription: String
  public var taskLocation: String
  public var taskPrice: Double
  public var taskStatus: String
  public var taskDate: String
  public var taskOwner: String
  public var acceptedId: String
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      taskTitle: String,
      taskDescription: String,
      taskLocation: String,
      taskPrice: Double,
      taskStatus: String,
      taskDate: String,
      taskOwner: String,
      acceptedId: String) {
    self.init(id: id,
      taskTitle: taskTitle,
      taskDescription: taskDescription,
      taskLocation: taskLocation,
      taskPrice: taskPrice,
      taskStatus: taskStatus,
      taskDate: taskDate,
      taskOwner: taskOwner,
      acceptedId: acceptedId,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      taskTitle: String,
      taskDescription: String,
      taskLocation: String,
      taskPrice: Double,
      taskStatus: String,
      taskDate: String,
      taskOwner: String,
      acceptedId: String,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.taskTitle = taskTitle
      self.taskDescription = taskDescription
      self.taskLocation = taskLocation
      self.taskPrice = taskPrice
      self.taskStatus = taskStatus
      self.taskDate = taskDate
      self.taskOwner = taskOwner
      self.acceptedId = acceptedId
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}
