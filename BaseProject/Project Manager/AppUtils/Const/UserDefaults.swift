//
//  UserDefaults.swift
//  BaseProject
//
//  Created by viral on 23/01/21.
//

import Foundation

class UserDefaultsKeys: NSObject {
    
    class var sharedInstance :UserDefaultsKeys {
        struct Singleton {
            static let instance = UserDefaultsKeys()
        }
        return Singleton.instance
    }
    
    
    func setupValue(Key:String, Value: Any) {
        
        UserDefaults.standard.set(Value, forKey: Key)
        
        UserDefaults.standard.synchronize()
        
    }
    
    
    func removeValue(Key:String){
        
        UserDefaults.standard.removeObject(forKey: Key)
        
        UserDefaults.standard.synchronize()
        
    }

    
    enum AuthKeys: String {
        
        case userId = "user_id"
        
        case userType = "userType"
        
        case email = "email"
        
        case authToken =  "token"
       
        case username = "username"
     
        var instance : Any? {
            
            return UserDefaults.standard.value(forKey: self.rawValue) ?? nil
            
        }
        
    }
    
    enum AppInfo: String {
        
        case deviceToken = "deviceToken" //FIREBASE
        case isLocationEnable = "islocationEnable"

        var instance : Any? {
            
            return UserDefaults.standard.value(forKey: self.rawValue) ?? nil
            
        }
        
    
    }
    


}
