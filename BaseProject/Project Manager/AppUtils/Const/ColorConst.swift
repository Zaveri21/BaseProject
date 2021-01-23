//
//  ColorConst.swift
//  BaseProject
//
//  Created by viral on 23/01/21.
//

import Foundation
import UIKit


// PRIMARY COLOR
let sColorPrimaryThemeLight =  UIColor.init(rgb: 0xFFFFFF)
let sColorPrimaryThemeDark =  UIColor.init(rgb: 0x000000)


//TEXT COLORS
let sColorTextPrimary = sColorBlack

let sColorTextPrimaryLight = sColorGray


//DEFAULTS COLORS
let sColorWhite = UIColor.init(rgb: 0xFFFFFF)

let sColorBlack = UIColor.init(rgb: 0x000000)

let sColorGray = UIColor.init(rgb: 0x8a8a8c)

let sColorLightGray = UIColor.init(rgb: 0xcacaca)

let sColorRed = UIColor.init(rgb: 0xe04646)

let sColorGreen = UIColor.init(rgb: 0x4dc501)

let sColorClear = UIColor.clear




extension UIColor {
    convenience init(rgb: UInt) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
