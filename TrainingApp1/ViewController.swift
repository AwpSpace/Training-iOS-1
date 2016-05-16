//
//  ViewController.swift
//  TrainingApp1
//
//  Created by Diep Nguyen Hoang on 5/15/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - UITableViewDataSource & UITableViewDelegate
    
    // Example:
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
    }
    
    // TODO: Add other delegate functions to show: 10 rows, each row with different text
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListCell", forIndexPath: indexPath)
        
        // TODO: Set cell value here, for example:
        let label = cell.viewWithTag(1) as! UILabel
        // ... set other value to label
        
        return cell
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        // TODO: set message to temporary value to pass through prepareForSegue function below
        return indexPath
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showDetailsMessage") {
            // TODO: - Get destination view controller and set message from here
        }
    }
}

