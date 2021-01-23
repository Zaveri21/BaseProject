//
//  ServiceManager.swift
//  BaseProject
//
//  Created by viral on 23/01/21.
//

import Foundation
import Alamofire
import SwiftyJSON
import AlamofireSwiftyJSON
import ObjectMapper

typealias simpleResponseHadnler = (_ search: SimpleResponse?) ->()
typealias getUsersityListResponseHadnler = (_ search: GetUniversitiesListResponse?) ->()

class ServiceManager {

    /*------------------------------------------------------------------------
     AUTHENTICATION HEADER
     ------------------------------------------------------------------------*/
    private func authHeader() -> [String : String] {
        return [
            "Accept":"application/json",
            "Authorization" : (UserDefaultsKeys.AuthKeys.authToken.instance as! String)
            //"Content-Type":"application/json"
        ]
    }
    
    
    /*------------------------------------------------------------------------
     GET UNIVERSITYLOGIN
     ------------------------------------------------------------------------*/
    func getUniversityList(completion: @escaping getUsersityListResponseHadnler){
        
        let URLstr = sGetUnversitiesList
        print("URL ===> \(URLstr)")
        //print("Parameters ===> \(param)")
        print("token ===> \(UserDefaultsKeys.AuthKeys.authToken.instance ?? "nil")")
        
        Alamofire.request(URLstr, method: .get, parameters: nil, encoding: URLEncoding.default , headers: nil)
            .validate(statusCode: 200..<404)
            .validate(contentType: ["application/json"])
            .responseSwiftyJSON { response in
                print(response)
                guard
                    let responseJSON = response.result.value,
                    let result = responseJSON.rawString()
                    
                    else {
                        print(response.result.error as Any)
                        completion(nil)
                        return
                }
                //print(result)
                
                guard result=="null" else{
                    guard
                        let resultData = Mapper<GetUniversitiesListResponse>().map(JSONString: result)
                        //let resultData = Mapper<RegNonceData>().mapArray(JSONString: result)
                        else{
                            print(result as Any)
                            //completion(nil)
                            return
                    }
                    completion(resultData)
                    return
                }
        }
        
    }
    
    
}
