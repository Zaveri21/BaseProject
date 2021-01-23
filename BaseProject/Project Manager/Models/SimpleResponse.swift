//
//  SimpleResponse.swift
//
//  Created by VISHAL on 15/05/20
//  Copyright (c) Tecocraft. All rights reserved.
//

import Foundation
import ObjectMapper

public class SimpleResponse: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let status = "status"
    static let message = "message"
    static let bookingid = "booking_id"
    static let isvalid = "is_valid"
    static let customerId = "customer"
    static let notificationTabBadge = "unreadNotificationCount"
  }

  // MARK: Properties
  public var status: Bool?
  public var isvalid: Bool?
  public var message: String?
  public var bookingid : Int?
  public var customerId: String?
  public var notificationTabBadge: Int?
    
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
    status <- map[SerializationKeys.status]
    isvalid <- map[SerializationKeys.isvalid]
    message <- map[SerializationKeys.message]
    bookingid <- map[SerializationKeys.bookingid]
    customerId <- map[SerializationKeys.customerId]
    notificationTabBadge <- map[SerializationKeys.notificationTabBadge]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    dictionary[SerializationKeys.status] = status
    dictionary[SerializationKeys.isvalid] = isvalid
    if let value = message { dictionary[SerializationKeys.message] = value }
    if let value = bookingid { dictionary[SerializationKeys.bookingid] = value }
    if let value = customerId { dictionary[SerializationKeys.customerId] = value }
    if let value = notificationTabBadge { dictionary[SerializationKeys.notificationTabBadge] = value }
    return dictionary
  }

}
