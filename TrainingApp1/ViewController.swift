//
//  ViewController.swift
//  TrainingApp1
//
//  Created by Diep Nguyen Hoang on 5/15/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var notes:[String]!
    
    var bundle:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        notes = ["Sáng mai 7h Đô gọi Điệp dậy đi ăn sáng!",
            "21h gặp khách hàng",
            "14 đưa chó đi ị",
            "17h ra chợ lấy hàng mang về cho bé hàng xóm",
            "23h đến nhà cô giáo nhận sổ liên lạc",
            "9h qua hàng bún đầu ngõ ăn sáng",
            "Sáng mai 7h Đô gọi Điệp dậy đi ăn sáng!",
            "21h gặp khách hàng",
            "14 đưa chó đi ị",
            "17h ra chợ lấy hàng mang về cho bé hàng xóm",
            "23h đến nhà cô giáo nhận sổ liên lạc",
            "9h qua hàng bún đầu ngõ ăn sáng",
            "Sáng mai 7h Đô gọi Điệp dậy đi ăn sáng!",
            "21h gặp khách hàng",
            "14 đưa chó đi ị",
            "17h ra chợ lấy hàng mang về cho bé hàng xóm",
            "23h đến nhà cô giáo nhận sổ liên lạc",
            "9h qua hàng bún đầu ngõ ăn sáng",
            "Sáng mai 7h Đô gọi Điệp dậy đi ăn sáng!",
            "21h gặp khách hàng",
            "14 đưa chó đi ị",
            "17h ra chợ lấy hàng mang về cho bé hàng xóm",
            "23h đến nhà cô giáo nhận sổ liên lạc",
            "9h qua hàng bún đầu ngõ ăn sáng",
            "Sáng mai 7h Đô gọi Điệp dậy đi ăn sáng!",
            "21h gặp khách hàng",
            "14 đưa chó đi ị",
            "17h ra chợ lấy hàng mang về cho bé hàng xóm",
            "23h đến nhà cô giáo nhận sổ liên lạc",
            "9h qua hàng bún đầu ngõ ăn sáng"
        ]
    }
    
    // MARK: - UITableViewDataSource & UITableViewDelegate
    
    // Example:
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    // TODO: Add other delegate functions to show: 10 rows, each row with different text
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return 1
        }else{
            return notes.count
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if(indexPath.section == 0){
            let infoCell = tableView.dequeueReusableCellWithIdentifier("InfoCell", forIndexPath: indexPath)
            
            let avatar = infoCell.viewWithTag(2) as! UIImageView
            avatar.layer.cornerRadius = 39
            avatar.layer.masksToBounds = true
            return infoCell
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("ListCell", forIndexPath: indexPath)
            return cell
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        var w:CGFloat = (self.view.window?.frame.size.width)!
        if(indexPath.section == 0){
            return w/3 + 40
        }
        return w/3
        
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        // TODO: set message to temporary value to pass through prepareForSegue function below
        if(indexPath.section == 0){
            bundle = "Your Profile"
        }else{
            bundle = notes[indexPath.row]
        }
    
        return indexPath
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showDetailsMessage") {
            // TODO: - Get destination view controller and set message from here
            (segue.destinationViewController as! DetailsViewController).message = bundle
        }
    }
}

