// swiftlint:disable all
import Amplify
import Foundation

extension Task {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case taskTitle
    case taskDescription
    case taskLocation
    case taskPrice
    case taskStatus
    case taskDate
    case taskOwner
    case acceptedId
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let task = Task.keys
    
    model.authRules = [
      rule(allow: .private, operations: [.create, .read, .update, .delete]),
      rule(allow: .owner, ownerField: "owner", identityClaim: "cognito:username", provider: .userPools, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "Tasks"
    
    model.fields(
      .id(),
      .field(task.taskTitle, is: .required, ofType: .string),
      .field(task.taskDescription, is: .required, ofType: .string),
      .field(task.taskLocation, is: .required, ofType: .string),
      .field(task.taskPrice, is: .required, ofType: .double),
      .field(task.taskStatus, is: .required, ofType: .string),
      .field(task.taskDate, is: .required, ofType: .string),
      .field(task.taskOwner, is: .required, ofType: .string),
      .field(task.acceptedId, is: .required, ofType: .string),
      .field(task.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(task.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}