//
//  ConstAppStoryboard.swift
//  BaseProject
//
//  Created by viral on 23/01/21.
//

import Foundation
import UIKit

enum App_Storyboards : String {
    
    case authentication = "Authentication"
    case dashboard  = "Home"
   
    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
}


enum LandingsStoryboard : String {
    
    case splash = "SplashVC"

    var object : UIViewController {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main).instantiateViewController(withIdentifier: self.rawValue)
    }

    
}
