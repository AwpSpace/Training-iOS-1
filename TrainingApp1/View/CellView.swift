//
//  CellView.swift
//  TrainingApp1
//
//  Created by Pham Ky on 6/5/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import Foundation
import UIKit

class CellView : UICollectionViewCell{
    
    @IBOutlet weak var imageView: UIImageView!
    var url: String!
    
    enum ErrorHandling:ErrorType
    {
        case NetworkError
    }
    
    func  setImageUrl(url: String){
        self.url = url

        loadImage(url)
    }
    
    func loadImage(urlString:String)
    {
        let imgURL: NSURL = NSURL(string: urlString)!
        let request: NSURLRequest = NSURLRequest(URL: imgURL)
        
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request){
            (data, response, error) -> Void in
            
            if (error == nil && data != nil)
            {
                func displayImage()
                {
                    //print("display: \(self.url)")
                    self.imageView.image = UIImage(data: data!)
                }
                
                dispatch_async(dispatch_get_main_queue(), displayImage)
            }
            
        }
        
        task.resume()
    }

}