//
//  NetworlConst.swift
//  BaseProject
//
//  Created by viral on 23/01/21.
//

import Foundation


#if DEBUG
    //let sBaseUrl = "https://newyourtime.tecocraft.co.in/" //:: TEST
    let sBaseUrl = "http://3.16.60.57/" //:: LIVE
#else
    let sBaseUrl = "http://3.16.60.57/"
#endif



let sSourceBaseUrl = sBaseUrl
let sAPIKEY = "api/v1/"

let sGetUnversitiesList = sBaseUrl + sAPIKEY + "UniversitiesWithoutPagi"
