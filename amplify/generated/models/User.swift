// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var givenName: String
  public var familyName: String
  public var phoneNumber: String
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      givenName: String,
      familyName: String,
      phoneNumber: String) {
    self.init(id: id,
      givenName: givenName,
      familyName: familyName,
      phoneNumber: phoneNumber,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      givenName: String,
      familyName: String,
      phoneNumber: String,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.givenName = givenName
      self.familyName = familyName
      self.phoneNumber = phoneNumber
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}