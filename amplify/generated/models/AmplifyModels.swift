// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "31674576afa4ca43e56dd5268f9b0df2"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Task.self)
    ModelRegistry.register(modelType: User.self)
  }
}