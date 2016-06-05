//
//  DetailsViewController.swift
//  TrainingApp1
//
//  Created by Diep Nguyen Hoang on 5/16/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var message: String?=nil
    var data : [String] = [];
    let cellIdentifier = "cellIdentifier"
    override func viewDidLoad() {
        super.viewDidLoad()
        
                
        if self.message?.isEmpty ?? true{
            showDetails("empty message");
            return;
        }
        
        //showDetails(self.message!)
        testGetRequest()
        //print(self.message)
                
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
    
    func reloadData(){
        print(data.count)
        self.collectionView.dataSource = self;
        self.collectionView.delegate = self;
    }
    
    func testGetRequest() {
        Alamofire.request(.GET, "https://api.flickr.com/services/feeds/photos_public.gne?format=json&user_id=141261738&nojsoncallback=1", encoding: .JSON).responseJSON { (response) in
            print(response.result)
            if let content = response.result.value {
                let json = JSON(content)
                let items = json["items"]
                for (index, item) : (String, JSON) in items{
                    print(index)
                    self.data.append(item["media"]["m"].stringValue)
                }
                self.reloadData();
            }
        }
        
    }
}
    extension DetailsViewController : UICollectionViewDataSource {
        
        func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
            return 1
        }
        
        func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return data.count
        }
        
        func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellIdentifier,forIndexPath:indexPath) as! CellView
            //cell.backgroundColor = UIColor.redColor()
            cell.setImageUrl(self.data[indexPath.row])
            //print(self.data[indexPath.row]);
            return cell
        }
        
    }
    
    // MARK:- UICollectionViewDelegate Methods
    
    extension DetailsViewController : UICollectionViewDelegate {
        
        func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
            //highlightCell(indexPath, flag: true)
        }
        
        func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
            //highlightCell(indexPath, flag: false)
        }
    }
    
    extension DetailsViewController: UICollectionViewDelegateFlowLayout {
        // MARK:- UICollectioViewDelegateFlowLayout methods
        
        func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
        {
            // http://stackoverflow.com/questions/28872001/uicollectionview-cell-spacing-based-on-device-sceen-size
            
            let length = (UIScreen.mainScreen().bounds.width-15)/2
            return CGSizeMake(length,length);
        }
    }


