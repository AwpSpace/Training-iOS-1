//
//  DetailsViewController.swift
//  TrainingApp1
//
//  Created by Diep Nguyen Hoang on 5/16/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var message: String?=nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                
        if self.message?.isEmpty ?? true{
            showDetails("empty message");
            return;
        }
        
        showDetails(self.message!)
        
        //print(self.message)
        
        // TODO: - Call show details with controller's message, add check for nil first
    }
    
    func showDetails(message: String) {
        // TODO: - Show alert with title: App Name, message: parameter
        //print("show details")
        let alertController = UIAlertController(title: "Title", message: self.message, preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            //print(action)
        }
        alertController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "Ok", style: .Default) { (action) in
            //print(action)
        }
        alertController.addAction(okAction)
        
        self.presentViewController(alertController, animated: true) {
            
        }
    }
    
}
