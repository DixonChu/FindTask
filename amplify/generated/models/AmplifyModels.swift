// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "e51fd8ced187ff55ee2267e96195b6e9"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Task.self)
    ModelRegistry.register(modelType: User.self)
  }
}