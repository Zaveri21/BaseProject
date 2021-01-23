//
//  FontConst.swift
//  BaseProject
//
//  Created by viral on 23/01/21.
//

import Foundation
import UIKit

func fontSizeSeprated(size: CGFloat) -> CGFloat{
    
    if iphone4 {
        return size - 2.0
    }else if iphone5 {
        return size - 1.0
    }else if iphone6i7 {
        return size + 1.0
    }else if iphone6i7plus {
        return size + 1.5
    }else if iphoneX {
        return size + 3.0
    }else if iPhoneXsMax {
        return size + 4.0
    }else {
        return size + 5.0
    }
    
}

enum AppFont : CGFloat {
    
    case size7 = 7.0
    case size8 = 8.0
    case size9 = 9.0
    case size10 = 10.0
    case size11 = 11.0
    case size12 = 12.0
    case size13 = 13.0
    case size14 = 14.0
    case size15 = 15.0
    case size16 = 16.0
    case size17 = 17.0
    case size18 = 18.0
    case size19 = 19.0
    case size20 = 20.0
    case size21 = 21.0
    case size22 = 22.0
    case size23 = 23.0
    case size24 = 24.0
    case size25 = 25.0
    case size26 = 26.0
    case size27 = 27.0
    case size28 = 28.0
    case size29 = 29.0
    case size30 = 30.0
    case size31 = 31.0
    case size32 = 32.0
    case size33 = 33.0
    case size34 = 34.0
    case size35 = 35.0
    case size36 = 36.0
    case size37 = 37.0
    case size38 = 38.0
    case size39 = 39.0
    case size40 = 40.0
    
    //:: Custom
    var regular : UIFont {
        
        return UIFont.init(name: sFontThemeRegular, size: fontSizeSeprated(size: self.rawValue))!
        
    }
    
    //:: Default
    var defult: UIFont {
        
        return UIFont.systemFont(ofSize: fontSizeSeprated(size: self.rawValue), weight: .regular)
        
    }
    
    var defaultMeduim : UIFont{
        
        return UIFont.systemFont(ofSize: fontSizeSeprated(size: self.rawValue), weight: .medium)
        
    }
    
    var defaultSemibold : UIFont{
        
        return UIFont.systemFont(ofSize: fontSizeSeprated(size: self.rawValue), weight: .semibold)
        
    }
    
    
    
}



let sDefaultFontSizeVerySmall8=fontSizeSeprated(size: 8.0)
let sDefaultFontSizeVerySmall9=fontSizeSeprated(size: 9.0)
let sDefaultFontSizeVerySmall10=fontSizeSeprated(size: 10.0)
let sDefaultFontSizeSmall11=fontSizeSeprated(size: 11.0)
let sDefaultFontSizeSmall12=fontSizeSeprated(size: 12.0)
let sDefaultFontSizeMedium13=fontSizeSeprated(size: 13.0)
let sDefaultFontSizeMedium14=fontSizeSeprated(size: 14.0)
let sDefaultFontSizeLarge15=fontSizeSeprated(size: 15.0)
let sDefaultFontSizeLarge16=fontSizeSeprated(size: 16.0)
let sDefaultFontSizeLarge17=fontSizeSeprated(size: 17.0)
let sDefaultFontSizeExtraLarge18=fontSizeSeprated(size: 18.0)
let sDefaultFontSizeExtraLarge19=fontSizeSeprated(size: 19.0)
let sDefaultFontSizeExtraLarge20=fontSizeSeprated(size: 20.0)
let sDefaultFontSizeExtraLarge21=fontSizeSeprated(size: 21.0)
let sDefaultFontSizeExtraLarge22=fontSizeSeprated(size: 22.0)
let sDefaultFontSizeExtraLarge23=fontSizeSeprated(size: 23.0)
let sDefaultFontSizeExtraLarge24=fontSizeSeprated(size: 24.0)
let sDefaultFontSizeExtraLarge25=fontSizeSeprated(size: 25.0)
let sDefaultFontSizeExtraLarge26=fontSizeSeprated(size: 26.0)
let sDefaultFontSizeExtraLarge27=fontSizeSeprated(size: 27.0)
let sDefaultFontSizeExtraLarge28=fontSizeSeprated(size: 28.0)
let sDefaultFontSizeExtraLarge29=fontSizeSeprated(size: 29.0)
let sDefaultFontSizeExtraLarge30=fontSizeSeprated(size: 30.0)

let sDefaultFontSizeExtraLarge32=32.0
let sDefaultFontSizeExtraLarge36=36.0
let sDefaultFontSizeExtraLarge40=40.0
let sDefaultFontSizeExtraLarge150=150.0


//MARK: FONT
let sFontThemeRegular =  "SFProRounded-Regular"
let sFontThemeMedium = "SFProRounded-Medium"
let sFontThemeSemibold = "SFProRounded-Semibold"








