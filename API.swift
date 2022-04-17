//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateTaskInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Double, taskStatus: String, taskDate: String, acceptedId: String) {
    graphQLMap = ["id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var taskTitle: String {
    get {
      return graphQLMap["taskTitle"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskTitle")
    }
  }

  public var taskDescription: String {
    get {
      return graphQLMap["taskDescription"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskDescription")
    }
  }

  public var taskLocation: String {
    get {
      return graphQLMap["taskLocation"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskLocation")
    }
  }

  public var taskPrice: Double {
    get {
      return graphQLMap["taskPrice"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskPrice")
    }
  }

  public var taskStatus: String {
    get {
      return graphQLMap["taskStatus"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskStatus")
    }
  }

  public var taskDate: String {
    get {
      return graphQLMap["taskDate"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskDate")
    }
  }

  public var acceptedId: String {
    get {
      return graphQLMap["acceptedId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "acceptedId")
    }
  }
}

public struct ModelTaskConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(taskTitle: ModelStringInput? = nil, taskDescription: ModelStringInput? = nil, taskLocation: ModelStringInput? = nil, taskPrice: ModelFloatInput? = nil, taskStatus: ModelStringInput? = nil, taskDate: ModelStringInput? = nil, acceptedId: ModelStringInput? = nil, and: [ModelTaskConditionInput?]? = nil, or: [ModelTaskConditionInput?]? = nil, not: ModelTaskConditionInput? = nil) {
    graphQLMap = ["taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId, "and": and, "or": or, "not": not]
  }

  public var taskTitle: ModelStringInput? {
    get {
      return graphQLMap["taskTitle"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskTitle")
    }
  }

  public var taskDescription: ModelStringInput? {
    get {
      return graphQLMap["taskDescription"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskDescription")
    }
  }

  public var taskLocation: ModelStringInput? {
    get {
      return graphQLMap["taskLocation"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskLocation")
    }
  }

  public var taskPrice: ModelFloatInput? {
    get {
      return graphQLMap["taskPrice"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskPrice")
    }
  }

  public var taskStatus: ModelStringInput? {
    get {
      return graphQLMap["taskStatus"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskStatus")
    }
  }

  public var taskDate: ModelStringInput? {
    get {
      return graphQLMap["taskDate"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskDate")
    }
  }

  public var acceptedId: ModelStringInput? {
    get {
      return graphQLMap["acceptedId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "acceptedId")
    }
  }

  public var and: [ModelTaskConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTaskConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTaskConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTaskConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTaskConditionInput? {
    get {
      return graphQLMap["not"] as! ModelTaskConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelFloatInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Double? = nil, eq: Double? = nil, le: Double? = nil, lt: Double? = nil, ge: Double? = nil, gt: Double? = nil, between: [Double?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Double? {
    get {
      return graphQLMap["le"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Double? {
    get {
      return graphQLMap["ge"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Double?]? {
    get {
      return graphQLMap["between"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateTaskInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, taskTitle: String? = nil, taskDescription: String? = nil, taskLocation: String? = nil, taskPrice: Double? = nil, taskStatus: String? = nil, taskDate: String? = nil, acceptedId: String? = nil) {
    graphQLMap = ["id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var taskTitle: String? {
    get {
      return graphQLMap["taskTitle"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskTitle")
    }
  }

  public var taskDescription: String? {
    get {
      return graphQLMap["taskDescription"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskDescription")
    }
  }

  public var taskLocation: String? {
    get {
      return graphQLMap["taskLocation"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskLocation")
    }
  }

  public var taskPrice: Double? {
    get {
      return graphQLMap["taskPrice"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskPrice")
    }
  }

  public var taskStatus: String? {
    get {
      return graphQLMap["taskStatus"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskStatus")
    }
  }

  public var taskDate: String? {
    get {
      return graphQLMap["taskDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskDate")
    }
  }

  public var acceptedId: String? {
    get {
      return graphQLMap["acceptedId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "acceptedId")
    }
  }
}

public struct DeleteTaskInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, givenName: String, familyName: String, phoneNumber: String) {
    graphQLMap = ["id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var givenName: String {
    get {
      return graphQLMap["givenName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "givenName")
    }
  }

  public var familyName: String {
    get {
      return graphQLMap["familyName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "familyName")
    }
  }

  public var phoneNumber: String {
    get {
      return graphQLMap["phoneNumber"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }
}

public struct ModelUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(givenName: ModelStringInput? = nil, familyName: ModelStringInput? = nil, phoneNumber: ModelStringInput? = nil, and: [ModelUserConditionInput?]? = nil, or: [ModelUserConditionInput?]? = nil, not: ModelUserConditionInput? = nil) {
    graphQLMap = ["givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber, "and": and, "or": or, "not": not]
  }

  public var givenName: ModelStringInput? {
    get {
      return graphQLMap["givenName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "givenName")
    }
  }

  public var familyName: ModelStringInput? {
    get {
      return graphQLMap["familyName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "familyName")
    }
  }

  public var phoneNumber: ModelStringInput? {
    get {
      return graphQLMap["phoneNumber"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }

  public var and: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUserConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, givenName: String? = nil, familyName: String? = nil, phoneNumber: String? = nil) {
    graphQLMap = ["id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var givenName: String? {
    get {
      return graphQLMap["givenName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "givenName")
    }
  }

  public var familyName: String? {
    get {
      return graphQLMap["familyName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "familyName")
    }
  }

  public var phoneNumber: String? {
    get {
      return graphQLMap["phoneNumber"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }
}

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelTaskFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, taskTitle: ModelStringInput? = nil, taskDescription: ModelStringInput? = nil, taskLocation: ModelStringInput? = nil, taskPrice: ModelFloatInput? = nil, taskStatus: ModelStringInput? = nil, taskDate: ModelStringInput? = nil, acceptedId: ModelStringInput? = nil, and: [ModelTaskFilterInput?]? = nil, or: [ModelTaskFilterInput?]? = nil, not: ModelTaskFilterInput? = nil) {
    graphQLMap = ["id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var taskTitle: ModelStringInput? {
    get {
      return graphQLMap["taskTitle"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskTitle")
    }
  }

  public var taskDescription: ModelStringInput? {
    get {
      return graphQLMap["taskDescription"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskDescription")
    }
  }

  public var taskLocation: ModelStringInput? {
    get {
      return graphQLMap["taskLocation"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskLocation")
    }
  }

  public var taskPrice: ModelFloatInput? {
    get {
      return graphQLMap["taskPrice"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskPrice")
    }
  }

  public var taskStatus: ModelStringInput? {
    get {
      return graphQLMap["taskStatus"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskStatus")
    }
  }

  public var taskDate: ModelStringInput? {
    get {
      return graphQLMap["taskDate"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taskDate")
    }
  }

  public var acceptedId: ModelStringInput? {
    get {
      return graphQLMap["acceptedId"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "acceptedId")
    }
  }

  public var and: [ModelTaskFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTaskFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTaskFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTaskFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTaskFilterInput? {
    get {
      return graphQLMap["not"] as! ModelTaskFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct ModelUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, givenName: ModelStringInput? = nil, familyName: ModelStringInput? = nil, phoneNumber: ModelStringInput? = nil, and: [ModelUserFilterInput?]? = nil, or: [ModelUserFilterInput?]? = nil, not: ModelUserFilterInput? = nil) {
    graphQLMap = ["id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var givenName: ModelStringInput? {
    get {
      return graphQLMap["givenName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "givenName")
    }
  }

  public var familyName: ModelStringInput? {
    get {
      return graphQLMap["familyName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "familyName")
    }
  }

  public var phoneNumber: ModelStringInput? {
    get {
      return graphQLMap["phoneNumber"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }

  public var and: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateTaskMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTask($input: CreateTaskInput!, $condition: ModelTaskConditionInput) {\n  createTask(input: $input, condition: $condition) {\n    __typename\n    id\n    taskTitle\n    taskDescription\n    taskLocation\n    taskPrice\n    taskStatus\n    taskDate\n    acceptedId\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: CreateTaskInput
  public var condition: ModelTaskConditionInput?

  public init(input: CreateTaskInput, condition: ModelTaskConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTask", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTask: CreateTask? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTask": createTask.flatMap { $0.snapshot }])
    }

    public var createTask: CreateTask? {
      get {
        return (snapshot["createTask"] as? Snapshot).flatMap { CreateTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTask")
      }
    }

    public struct CreateTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("taskTitle", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskPrice", type: .nonNull(.scalar(Double.self))),
        GraphQLField("taskStatus", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("acceptedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Double, taskStatus: String, taskDate: String, acceptedId: String, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var taskTitle: String {
        get {
          return snapshot["taskTitle"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskTitle")
        }
      }

      public var taskDescription: String {
        get {
          return snapshot["taskDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDescription")
        }
      }

      public var taskLocation: String {
        get {
          return snapshot["taskLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskLocation")
        }
      }

      public var taskPrice: Double {
        get {
          return snapshot["taskPrice"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskPrice")
        }
      }

      public var taskStatus: String {
        get {
          return snapshot["taskStatus"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }

      public var taskDate: String {
        get {
          return snapshot["taskDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDate")
        }
      }

      public var acceptedId: String {
        get {
          return snapshot["acceptedId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "acceptedId")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class UpdateTaskMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTask($input: UpdateTaskInput!, $condition: ModelTaskConditionInput) {\n  updateTask(input: $input, condition: $condition) {\n    __typename\n    id\n    taskTitle\n    taskDescription\n    taskLocation\n    taskPrice\n    taskStatus\n    taskDate\n    acceptedId\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: UpdateTaskInput
  public var condition: ModelTaskConditionInput?

  public init(input: UpdateTaskInput, condition: ModelTaskConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTask", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTask: UpdateTask? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTask": updateTask.flatMap { $0.snapshot }])
    }

    public var updateTask: UpdateTask? {
      get {
        return (snapshot["updateTask"] as? Snapshot).flatMap { UpdateTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTask")
      }
    }

    public struct UpdateTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("taskTitle", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskPrice", type: .nonNull(.scalar(Double.self))),
        GraphQLField("taskStatus", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("acceptedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Double, taskStatus: String, taskDate: String, acceptedId: String, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var taskTitle: String {
        get {
          return snapshot["taskTitle"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskTitle")
        }
      }

      public var taskDescription: String {
        get {
          return snapshot["taskDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDescription")
        }
      }

      public var taskLocation: String {
        get {
          return snapshot["taskLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskLocation")
        }
      }

      public var taskPrice: Double {
        get {
          return snapshot["taskPrice"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskPrice")
        }
      }

      public var taskStatus: String {
        get {
          return snapshot["taskStatus"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }

      public var taskDate: String {
        get {
          return snapshot["taskDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDate")
        }
      }

      public var acceptedId: String {
        get {
          return snapshot["acceptedId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "acceptedId")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class DeleteTaskMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTask($input: DeleteTaskInput!, $condition: ModelTaskConditionInput) {\n  deleteTask(input: $input, condition: $condition) {\n    __typename\n    id\n    taskTitle\n    taskDescription\n    taskLocation\n    taskPrice\n    taskStatus\n    taskDate\n    acceptedId\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var input: DeleteTaskInput
  public var condition: ModelTaskConditionInput?

  public init(input: DeleteTaskInput, condition: ModelTaskConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTask", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTask: DeleteTask? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTask": deleteTask.flatMap { $0.snapshot }])
    }

    public var deleteTask: DeleteTask? {
      get {
        return (snapshot["deleteTask"] as? Snapshot).flatMap { DeleteTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTask")
      }
    }

    public struct DeleteTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("taskTitle", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskPrice", type: .nonNull(.scalar(Double.self))),
        GraphQLField("taskStatus", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("acceptedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Double, taskStatus: String, taskDate: String, acceptedId: String, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var taskTitle: String {
        get {
          return snapshot["taskTitle"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskTitle")
        }
      }

      public var taskDescription: String {
        get {
          return snapshot["taskDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDescription")
        }
      }

      public var taskLocation: String {
        get {
          return snapshot["taskLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskLocation")
        }
      }

      public var taskPrice: Double {
        get {
          return snapshot["taskPrice"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskPrice")
        }
      }

      public var taskStatus: String {
        get {
          return snapshot["taskStatus"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }

      public var taskDate: String {
        get {
          return snapshot["taskDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDate")
        }
      }

      public var acceptedId: String {
        get {
          return snapshot["acceptedId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "acceptedId")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!, $condition: ModelUserConditionInput) {\n  createUser(input: $input, condition: $condition) {\n    __typename\n    id\n    givenName\n    familyName\n    phoneNumber\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: CreateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("givenName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, givenName: String, familyName: String, phoneNumber: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var givenName: String {
        get {
          return snapshot["givenName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var phoneNumber: String {
        get {
          return snapshot["phoneNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UpdateUserInput!, $condition: ModelUserConditionInput) {\n  updateUser(input: $input, condition: $condition) {\n    __typename\n    id\n    givenName\n    familyName\n    phoneNumber\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: UpdateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { $0.snapshot }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (snapshot["updateUser"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("givenName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, givenName: String, familyName: String, phoneNumber: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var givenName: String {
        get {
          return snapshot["givenName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var phoneNumber: String {
        get {
          return snapshot["phoneNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!, $condition: ModelUserConditionInput) {\n  deleteUser(input: $input, condition: $condition) {\n    __typename\n    id\n    givenName\n    familyName\n    phoneNumber\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteUserInput
  public var condition: ModelUserConditionInput?

  public init(input: DeleteUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("givenName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, givenName: String, familyName: String, phoneNumber: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var givenName: String {
        get {
          return snapshot["givenName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var phoneNumber: String {
        get {
          return snapshot["phoneNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class GetTaskQuery: GraphQLQuery {
  public static let operationString =
    "query GetTask($id: ID!) {\n  getTask(id: $id) {\n    __typename\n    id\n    taskTitle\n    taskDescription\n    taskLocation\n    taskPrice\n    taskStatus\n    taskDate\n    acceptedId\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTask", arguments: ["id": GraphQLVariable("id")], type: .object(GetTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTask: GetTask? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTask": getTask.flatMap { $0.snapshot }])
    }

    public var getTask: GetTask? {
      get {
        return (snapshot["getTask"] as? Snapshot).flatMap { GetTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTask")
      }
    }

    public struct GetTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("taskTitle", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskPrice", type: .nonNull(.scalar(Double.self))),
        GraphQLField("taskStatus", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("acceptedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Double, taskStatus: String, taskDate: String, acceptedId: String, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var taskTitle: String {
        get {
          return snapshot["taskTitle"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskTitle")
        }
      }

      public var taskDescription: String {
        get {
          return snapshot["taskDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDescription")
        }
      }

      public var taskLocation: String {
        get {
          return snapshot["taskLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskLocation")
        }
      }

      public var taskPrice: Double {
        get {
          return snapshot["taskPrice"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskPrice")
        }
      }

      public var taskStatus: String {
        get {
          return snapshot["taskStatus"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }

      public var taskDate: String {
        get {
          return snapshot["taskDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDate")
        }
      }

      public var acceptedId: String {
        get {
          return snapshot["acceptedId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "acceptedId")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class ListTasksQuery: GraphQLQuery {
  public static let operationString =
    "query ListTasks($filter: ModelTaskFilterInput, $limit: Int, $nextToken: String) {\n  listTasks(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      taskTitle\n      taskDescription\n      taskLocation\n      taskPrice\n      taskStatus\n      taskDate\n      acceptedId\n      createdAt\n      updatedAt\n      owner\n    }\n    nextToken\n  }\n}"

  public var filter: ModelTaskFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelTaskFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listTasks", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listTasks: ListTask? = nil) {
      self.init(snapshot: ["__typename": "Query", "listTasks": listTasks.flatMap { $0.snapshot }])
    }

    public var listTasks: ListTask? {
      get {
        return (snapshot["listTasks"] as? Snapshot).flatMap { ListTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listTasks")
      }
    }

    public struct ListTask: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelTaskConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelTaskConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Task"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("taskTitle", type: .nonNull(.scalar(String.self))),
          GraphQLField("taskDescription", type: .nonNull(.scalar(String.self))),
          GraphQLField("taskLocation", type: .nonNull(.scalar(String.self))),
          GraphQLField("taskPrice", type: .nonNull(.scalar(Double.self))),
          GraphQLField("taskStatus", type: .nonNull(.scalar(String.self))),
          GraphQLField("taskDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("acceptedId", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Double, taskStatus: String, taskDate: String, acceptedId: String, createdAt: String, updatedAt: String, owner: String? = nil) {
          self.init(snapshot: ["__typename": "Task", "id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var taskTitle: String {
          get {
            return snapshot["taskTitle"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "taskTitle")
          }
        }

        public var taskDescription: String {
          get {
            return snapshot["taskDescription"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "taskDescription")
          }
        }

        public var taskLocation: String {
          get {
            return snapshot["taskLocation"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "taskLocation")
          }
        }

        public var taskPrice: Double {
          get {
            return snapshot["taskPrice"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "taskPrice")
          }
        }

        public var taskStatus: String {
          get {
            return snapshot["taskStatus"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "taskStatus")
          }
        }

        public var taskDate: String {
          get {
            return snapshot["taskDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "taskDate")
          }
        }

        public var acceptedId: String {
          get {
            return snapshot["acceptedId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "acceptedId")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($id: ID!) {\n  getUser(id: $id) {\n    __typename\n    id\n    givenName\n    familyName\n    phoneNumber\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["id": GraphQLVariable("id")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("givenName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, givenName: String, familyName: String, phoneNumber: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var givenName: String {
        get {
          return snapshot["givenName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var phoneNumber: String {
        get {
          return snapshot["phoneNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($filter: ModelUserFilterInput, $limit: Int, $nextToken: String) {\n  listUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      givenName\n      familyName\n      phoneNumber\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelUserFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("givenName", type: .nonNull(.scalar(String.self))),
          GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
          GraphQLField("phoneNumber", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, givenName: String, familyName: String, phoneNumber: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var givenName: String {
          get {
            return snapshot["givenName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "givenName")
          }
        }

        public var familyName: String {
          get {
            return snapshot["familyName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "familyName")
          }
        }

        public var phoneNumber: String {
          get {
            return snapshot["phoneNumber"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phoneNumber")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateTaskSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateTask($owner: String) {\n  onCreateTask(owner: $owner) {\n    __typename\n    id\n    taskTitle\n    taskDescription\n    taskLocation\n    taskPrice\n    taskStatus\n    taskDate\n    acceptedId\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateTask", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnCreateTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateTask: OnCreateTask? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateTask": onCreateTask.flatMap { $0.snapshot }])
    }

    public var onCreateTask: OnCreateTask? {
      get {
        return (snapshot["onCreateTask"] as? Snapshot).flatMap { OnCreateTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateTask")
      }
    }

    public struct OnCreateTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("taskTitle", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskPrice", type: .nonNull(.scalar(Double.self))),
        GraphQLField("taskStatus", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("acceptedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Double, taskStatus: String, taskDate: String, acceptedId: String, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var taskTitle: String {
        get {
          return snapshot["taskTitle"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskTitle")
        }
      }

      public var taskDescription: String {
        get {
          return snapshot["taskDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDescription")
        }
      }

      public var taskLocation: String {
        get {
          return snapshot["taskLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskLocation")
        }
      }

      public var taskPrice: Double {
        get {
          return snapshot["taskPrice"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskPrice")
        }
      }

      public var taskStatus: String {
        get {
          return snapshot["taskStatus"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }

      public var taskDate: String {
        get {
          return snapshot["taskDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDate")
        }
      }

      public var acceptedId: String {
        get {
          return snapshot["acceptedId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "acceptedId")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnUpdateTaskSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateTask($owner: String) {\n  onUpdateTask(owner: $owner) {\n    __typename\n    id\n    taskTitle\n    taskDescription\n    taskLocation\n    taskPrice\n    taskStatus\n    taskDate\n    acceptedId\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateTask", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnUpdateTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateTask: OnUpdateTask? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateTask": onUpdateTask.flatMap { $0.snapshot }])
    }

    public var onUpdateTask: OnUpdateTask? {
      get {
        return (snapshot["onUpdateTask"] as? Snapshot).flatMap { OnUpdateTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateTask")
      }
    }

    public struct OnUpdateTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("taskTitle", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskPrice", type: .nonNull(.scalar(Double.self))),
        GraphQLField("taskStatus", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("acceptedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Double, taskStatus: String, taskDate: String, acceptedId: String, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var taskTitle: String {
        get {
          return snapshot["taskTitle"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskTitle")
        }
      }

      public var taskDescription: String {
        get {
          return snapshot["taskDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDescription")
        }
      }

      public var taskLocation: String {
        get {
          return snapshot["taskLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskLocation")
        }
      }

      public var taskPrice: Double {
        get {
          return snapshot["taskPrice"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskPrice")
        }
      }

      public var taskStatus: String {
        get {
          return snapshot["taskStatus"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }

      public var taskDate: String {
        get {
          return snapshot["taskDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDate")
        }
      }

      public var acceptedId: String {
        get {
          return snapshot["acceptedId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "acceptedId")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnDeleteTaskSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteTask($owner: String) {\n  onDeleteTask(owner: $owner) {\n    __typename\n    id\n    taskTitle\n    taskDescription\n    taskLocation\n    taskPrice\n    taskStatus\n    taskDate\n    acceptedId\n    createdAt\n    updatedAt\n    owner\n  }\n}"

  public var owner: String?

  public init(owner: String? = nil) {
    self.owner = owner
  }

  public var variables: GraphQLMap? {
    return ["owner": owner]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteTask", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnDeleteTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteTask: OnDeleteTask? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteTask": onDeleteTask.flatMap { $0.snapshot }])
    }

    public var onDeleteTask: OnDeleteTask? {
      get {
        return (snapshot["onDeleteTask"] as? Snapshot).flatMap { OnDeleteTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteTask")
      }
    }

    public struct OnDeleteTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("taskTitle", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDescription", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskLocation", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskPrice", type: .nonNull(.scalar(Double.self))),
        GraphQLField("taskStatus", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("acceptedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, taskTitle: String, taskDescription: String, taskLocation: String, taskPrice: Double, taskStatus: String, taskDate: String, acceptedId: String, createdAt: String, updatedAt: String, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "taskTitle": taskTitle, "taskDescription": taskDescription, "taskLocation": taskLocation, "taskPrice": taskPrice, "taskStatus": taskStatus, "taskDate": taskDate, "acceptedId": acceptedId, "createdAt": createdAt, "updatedAt": updatedAt, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var taskTitle: String {
        get {
          return snapshot["taskTitle"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskTitle")
        }
      }

      public var taskDescription: String {
        get {
          return snapshot["taskDescription"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDescription")
        }
      }

      public var taskLocation: String {
        get {
          return snapshot["taskLocation"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskLocation")
        }
      }

      public var taskPrice: Double {
        get {
          return snapshot["taskPrice"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskPrice")
        }
      }

      public var taskStatus: String {
        get {
          return snapshot["taskStatus"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }

      public var taskDate: String {
        get {
          return snapshot["taskDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskDate")
        }
      }

      public var acceptedId: String {
        get {
          return snapshot["acceptedId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "acceptedId")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser {\n  onCreateUser {\n    __typename\n    id\n    givenName\n    familyName\n    phoneNumber\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUser", type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUser: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUser": onCreateUser.flatMap { $0.snapshot }])
    }

    public var onCreateUser: OnCreateUser? {
      get {
        return (snapshot["onCreateUser"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUser")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("givenName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, givenName: String, familyName: String, phoneNumber: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var givenName: String {
        get {
          return snapshot["givenName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var phoneNumber: String {
        get {
          return snapshot["phoneNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUser {\n  onUpdateUser {\n    __typename\n    id\n    givenName\n    familyName\n    phoneNumber\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUser", type: .object(OnUpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUser: OnUpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUser": onUpdateUser.flatMap { $0.snapshot }])
    }

    public var onUpdateUser: OnUpdateUser? {
      get {
        return (snapshot["onUpdateUser"] as? Snapshot).flatMap { OnUpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUser")
      }
    }

    public struct OnUpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("givenName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, givenName: String, familyName: String, phoneNumber: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var givenName: String {
        get {
          return snapshot["givenName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var phoneNumber: String {
        get {
          return snapshot["phoneNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser {\n  onDeleteUser {\n    __typename\n    id\n    givenName\n    familyName\n    phoneNumber\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUser", type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUser: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUser": onDeleteUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUser: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUser"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUser")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("givenName", type: .nonNull(.scalar(String.self))),
        GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
        GraphQLField("phoneNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, givenName: String, familyName: String, phoneNumber: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "givenName": givenName, "familyName": familyName, "phoneNumber": phoneNumber, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var givenName: String {
        get {
          return snapshot["givenName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String {
        get {
          return snapshot["familyName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "familyName")
        }
      }

      public var phoneNumber: String {
        get {
          return snapshot["phoneNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phoneNumber")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}