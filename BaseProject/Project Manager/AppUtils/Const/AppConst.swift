//
//  AppConst.swift
//  BaseProject
//
//  Created by viral on 23/01/21.
//


import Foundation
import UIKit
import NVActivityIndicatorView

//MARK: APP INFORMATIONS
var APP_Title : String {
    
    get {
        
        if let app_name = Bundle.main.infoDictionary!["CFBundleName"] as? String {
            
            return app_name
            
        }
        else {
          
            return "AppName"
        }
        
    }
    
}

//#MAERK: APP LOADER
let sLoaderSize = CGSize(width: 50.0, height: 50.0)
let sLoderType = NVActivityIndicatorType.ballRotateChase
let sLoaderColor = sColorPrimaryThemeDark
let sLoaderTitle = "Loading..."
let sLoaderTitleColor = sColorPrimaryThemeDark


//MARK: APP PREFIXE
let App_Store_ID = "id00000000"

let App_CurrencySymb = "£"

let App_DateFormat = "dd-MM-yyyy"

let App_TimeFormat = "HH:mm"

let sSymbolPercent = "%"

let sSymbolBulet = "•"

let sSymbolPlus = "+"

let sUrlPrifix = "http://"

let sAppServerDateFormate = "YYYY-MM-dd HH:mm:ss"

let sApp_incomingCallSound = Bundle.main.path(forResource: "apple", ofType:"wav")!
let sApp_outGoingCallSound = Bundle.main.path(forResource: "ringback", ofType:"wav")!


//::#MARK: Variables


//MARK: IMAGES
let sImageCheckBoxTheme = UIImage(named: "")!
let sImageUnchekboxTheme = UIImage(named: "")!
let sPlaceholderProfileImg = UIImage(named: "")!


//MARK: EMOJIES
let sEmojiSuccessTick = "✅"


//MARK: SCREEN-SIZES //

let SCREEN = UIScreen.main.bounds
let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
let iphone4 = UIScreen.main.bounds.size.height == 480
let iphone5 = UIScreen.main.bounds.size.height == 568
let iphone6i7 = UIScreen.main.bounds.size.height == 667
let iphone6i7plus = UIScreen.main.bounds.size.height == 736
let iphoneX = UIScreen.main.bounds.size.height == 812
let iPhoneXsMax = UIScreen.main.bounds.size.height == 896



//MARK: TOP AND BOTTOM PADDING WITH SAFE-AREA
var topPadding:CGFloat {
    get {
        
        if #available(iOS 11.0, *) {
            
            /*let window = UIApplication.shared.keyWindow
            return window?.safeAreaInsets.top ?? 0.0*/
            
            if let keyWindow = UIWindow.keyWindow {
                return keyWindow.safeAreaInsets.top
            }
        
            return 0.0
        }else {
            return 20.0
        }
    }
}

var bottomPadding:CGFloat {
    get {
        if #available(iOS 11.0, *) {

            /*let window = UIApplication.shared.keyWindow
            return window?.safeAreaInsets.bottom ?? 0.0*/
            if let keyWindow = UIWindow.keyWindow {
                return keyWindow.safeAreaInsets.top
            }
            return 0.0
        }else {
            return 0.0
        }
    }
}



var appVersion : String {
    get {
        return Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String ?? "nil"
    }
}

var deviceTimeFormatIs : String {
    
    get {
        
        let locale = NSLocale.current
        let formatter : String = DateFormatter.dateFormat(fromTemplate: "j", options:0, locale:locale)!
        
        
        return  formatter.contains("a") ? "hh:mm a" : "HH:mm"
    }
    
}

var deviceTimezoneName : String {
    
    get {
        return TimeZone.current.identifier
    }
    
}





//:: APP OBSERVER
extension Notification.Name {
    
    static let notificationTabBadge = Notification.Name("notificationTabBadge")
}


extension UIWindow {
    static var keyWindow: UIWindow? {
        if #available(iOS 13, *) {
            return UIApplication.shared.windows.first { $0.isKeyWindow }
        } else {
            return UIApplication.shared.keyWindow
        }
    }
}
