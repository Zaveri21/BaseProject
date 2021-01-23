//
//  ViewController.swift
//  BaseProject
//
//  Created by viral on 23/01/21.
//

import UIKit
import NVActivityIndicatorView

typealias alertCompletionHandler = (_ result: Any?) -> Void

class ViewController: UIViewController , NVActivityIndicatorViewable {

    //MARK:- IBOUTLETS
    //MARK:- DECLARATIONS
    //MARK:- VIEW_METHODS
    //MARK:- API CALL
    //MARK:- BUTTONS_ACTIONS
    //MARK:- OTHER METHODS
    //MARK:- SEGUE METHODS
    //MARK:- EXTENSIONS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api_GetUniversity()
    }

    func api_GetUniversity(){
        guard Reachabilities.isConnectedToNetwork() == true else
        {
            self.showAlert(title: "Error", msg: NSLocalizedString(errors.checkInternet.string, comment: ""))
            
            return
        }
        
        self.startAnimating(sLoaderSize ,type: sLoderType , color: sLoaderColor, textColor: sLoaderTitleColor)
        
        ServiceManager().getUniversityList() { (response) in
            
            self.stopAnimating()
            guard response != nil else
            {
                
                self.showAlert(title: "Error", msg: NSLocalizedString(errors.somethingWrong.string , comment: ""))
                
                return
            }
            
            guard response!.status != false else {
                
                self.showAlert(title: "Error", msg: NSLocalizedString( response?.message ?? "nil" , comment: ""))
                
                return
            }
            
        
            
        }
    }
    
    func showAlert(title: String? = APP_Title , msg: String) {
        
        let alert = UIAlertController(title: title, message: msg, preferredStyle: UIAlertController.Style.alert);
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
          
        }))
        
        self.present(alert, animated: true, completion: nil)
        //let vc = self.topViewController()
        
        //vc!.present(alert, animated: true, completion: nil)
    }
    

}




