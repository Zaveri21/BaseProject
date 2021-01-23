import SystemConfiguration
import Foundation
import UIKit

public class Reachabilities {
    
    class func isConnectedToNetwork()->Bool{
        
        let networkReachability = ReachabilityObjc.reachabilityForInternetConnection()
        let networkStatus = networkReachability?.currentReachabilityStatus()
        if networkStatus == NotReachable {
            //ToastMessage.showMessageWithTitle("Internet Failure", Message: "Please check your internet connectivity its failed.", BackgroundColor: ToastMessage_failed, withDuration: 4.0)
            print("Internet Failure --> Please check your internet connectivity its failed.")
            return false;
        }
        return true;
    }
}
