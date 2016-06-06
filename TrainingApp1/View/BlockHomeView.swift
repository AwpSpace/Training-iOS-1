//
//  BlockHomeView.swift
//  TrainingApp1
//
//  Created by Pham Ky on 6/6/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import Foundation
import UIKit

class BlockHomeView: UICollectionViewCell{
    
    @IBOutlet weak var poster: UILabel!
    @IBOutlet weak var postedTime: UILabel!
    @IBOutlet weak var imagePosted: UIImageView!

    func loadView(poster: String, postedTime: String) {
        self.poster.text = poster
        self.postedTime.text = postedTime
    }
}
