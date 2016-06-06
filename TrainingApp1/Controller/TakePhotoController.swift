//
//  TakePhotoController.swift
//  TrainingApp1
//
//  Created by Pham Ky on 6/6/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import Foundation
import UIKit

class TakePhotoController : UIViewController{
    
    @IBOutlet weak var btnChooseLibrary: UIButton!
    @IBOutlet weak var btnChooseCamera: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func touchDownChooseCamera(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            var imagePicker = UIImagePickerController()
            //imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.Camera;
            imagePicker.allowsEditing = false
            self.presentViewController(imagePicker, animated: true, completion: nil)
        }else{
            warnDialog("Fail to access Camera")
        }
        
    }
    @IBAction func touchDownChooseLibrary(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
            var imagePicker = UIImagePickerController()
            //imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary;
            imagePicker.allowsEditing = true
            self.presentViewController(imagePicker, animated: true, completion: nil)
        }else{
            warnDialog("Fail to access Library")
        }
    }
    
    func warnDialog(message:String) {
        let alertController = UIAlertController(title: "W", message: message, preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .Default) { (action) in
            //print(action)
        }
        alertController.addAction(okAction)
        
        self.presentViewController(alertController, animated: true) {
            
        }
        
    }
}