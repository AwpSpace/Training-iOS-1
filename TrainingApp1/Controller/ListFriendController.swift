//
//  ViewController.swift
//  TrainingApp1
//
//  Created by Diep Nguyen Hoang on 5/15/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import UIKit

class ListFriendController: UITableViewController {

    var modelDatas = ModelData().getDatas()
    var model : Model! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - UITableViewDataSource & UITableViewDelegate
    
    // Example:
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // TODO: Add other delegate functions to show: 10 rows, each row with different text
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListCell", forIndexPath: indexPath)
        
        // TODO: Set cell value here, for example:
        let label = cell.viewWithTag(1) as! UILabel
        // ... set other value to label
        label.text = self.modelDatas[indexPath.row].name
        
        return cell
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        // TODO: set message to temporary value to pass through prepareForSegue function below
        model = self.modelDatas[indexPath.row]
        
        return indexPath
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        if (segue.identifier == "showDetailsMessage"){
            // TODO: - Get destination view controller and set message from here
            if let destinationViewController = segue.destinationViewController as? DetailsViewController {
                destinationViewController.message = self.model.say()
                //print(self.model.say())
            }
//            let des = segue.destinationViewController as! DetailsViewController
//            
//            des.message = self.model.message
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRows = self.modelDatas.count
        return numberOfRows
    }
}

