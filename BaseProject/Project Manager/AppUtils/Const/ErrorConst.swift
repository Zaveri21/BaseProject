//
//  ErrorConst.swift
//  BaseProject
//
//  Created by viral on 23/01/21.
//

import Foundation

enum errors : String {
    
    case checkInternet = "Please check your internet connectivity."
    
    case somethingWrong = "Something went wrong."
    
    case dataNotFound = "Data not found. Please try after sometimes"
    
    case displayInvelidToken = "Authentication failed!"
    
    case UnderDevelop = "Under Development."
    
    var string : String {
        
        return self.rawValue
        
    }
}
