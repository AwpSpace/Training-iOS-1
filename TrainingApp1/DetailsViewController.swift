//
//  DetailsViewController.swift
//  TrainingApp1
//
//  Created by Diep Nguyen Hoang on 5/16/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var message: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: - Call show details with controller's message, add check for nil first
        showDetails(message!)
    }
    
    func showDetails(message: String) {
        print("data: "+message)
        // TODO: - Show alert with title: App Name, message: parameter
        let alertController = UIAlertController(title: "ViNote", message:
            message, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
