//
//  GetUniversitiesListResponse.swift
//
//  Created by VISHAL on 14/05/20


import Foundation
import ObjectMapper

public class GetUniversitiesListResponse: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let universities = "data"
    static let status = "status"
    static let message = "message"
  }

  // MARK: Properties
  public var universities: [Universities]?
  public var status: Bool? = false
  public var message: String?

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
    universities <- map[SerializationKeys.universities]
    status <- map[SerializationKeys.status]
    message <- map[SerializationKeys.message]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = universities { dictionary[SerializationKeys.universities] = value.map { $0.dictionaryRepresentation() } }
    dictionary[SerializationKeys.status] = status
    if let value = message { dictionary[SerializationKeys.message] = value }
    return dictionary
  }

}
