//
//  HomeController.swift
//  TrainingApp1
//
//  Created by Pham Ky on 6/6/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import Foundation
import UIKit

class HomeController : UICollectionViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellIdentity",forIndexPath:indexPath) as! BlockHomeView
        cell.loadView("phamkyit",  postedTime: "12' ago")
        return cell
    }
    
}
extension HomeController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let length = (UIScreen.mainScreen().bounds.width-10)
        return CGSizeMake(length,length);
    }
    
}
