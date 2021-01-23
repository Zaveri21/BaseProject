//
//  Universities.swift
//
//  Created by VISHAL on 14/05/20

import Foundation
import ObjectMapper

public class Universities: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let id = "id"
    static let universityName = "university_name"
    static let emailPostfix = "email_postfix"
  }

  // MARK: Properties
  public var id: Int?
  public var universityName: String?
  public var emailPostfix: String?

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public required init?(map: Map){

  }

  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public func mapping(map: Map) {
    id <- map[SerializationKeys.id]
    universityName <- map[SerializationKeys.universityName]
    emailPostfix <- map[SerializationKeys.emailPostfix]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = id { dictionary[SerializationKeys.id] = value }
    if let value = universityName { dictionary[SerializationKeys.universityName] = value }
    if let value = emailPostfix { dictionary[SerializationKeys.emailPostfix] = value }
    return dictionary
  }

}
