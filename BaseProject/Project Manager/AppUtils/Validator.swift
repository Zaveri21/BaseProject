//
//  Validator.swift
//  BaseProject
//
//  Created by viral on 23/01/21.
//

import Foundation

class Validator: NSObject {
    
    
    class var sharedInstance :Validator {
        struct Singleton {
            static let instance = Validator()
        }
        return Singleton.instance
    }

  
    func isValidEmail(text: String) -> Bool {
        
        let emailRegEx = "[a-zA-Z0-9._-]{2,}+@[a-zA-Z0-9]{2,}+\\.+[a-zA-Z]{2,}+"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: text)
    }
    
    func isValidName(text: String) -> Bool {
        
        return text.count < 3 || text.count > 50 ? false : true
            
       
    }
    
    func isValidContact(text: String) -> Bool {
        
        return (text.isEmpty || text.count < 10)  ? false : true
        
    }

}
