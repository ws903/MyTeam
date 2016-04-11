//
//  ItemsViewController.swift
//  Homepwner
//
<<<<<<< HEAD
//  Created by Lorenzo Llamas on 2/28/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
=======
//  Created by David on 2/28/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
//

import UIKit

class ItemsViewController: UITableViewController {
<<<<<<< HEAD
    var itemStore: ItemStore!
    var imageStore: ImageStore!
//    @IBAction func toggleEditingMode(sender: AnyObject) {
//        // if you are currently in editing mode
//        if editing {
//            //change text of button to inform user of state
//            sender.setTitle("Edit", forState: .Normal)
//        //turn off editing mode
//            setEditing(false, animated: true)
//        }
//        else {
//            //change text of button  to inform user of state
//            sender.setTitle("Done", forState: .Normal)
//            
//            //enter editing mode
//            setEditing(true, animated: true)
//        }
//    }
    
    @IBAction func addNewItem(sender: AnyObject) {
        //Make new index path
//        let lastRow = tableView.numberOfRowsInSection(0)
//        let indexPath = NSIndexPath(forRow: lastRow, inSection: 0)
//        
//        // Insert this new row into the table
//        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        //create a new item and add it to the store 
        let newItem = itemStore.createItem()
        
        //figure out where that item is in the array 
        if let index =  itemStore.allItems.indexOf(newItem) {
            let indexPath =  NSIndexPath(forRow: index, inSection: 0)
            
            //insert this new row into the table
=======
    
    var itemStore: ItemStore!
    var imageStore: ImageStore!
    
    @IBAction func addNewItem(sender: AnyObject) {
        // Create a new item and add it to the store
        let newItem = itemStore.createItem()
        
        // Figure out where that item is in the array
        if let index = itemStore.allItems.indexOf(newItem) {
            let indexPath = NSIndexPath(forRow: index, inSection: 0)
            
            // Insert this new row into the table
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
            tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
    }
    
<<<<<<< HEAD
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        navigationItem.leftBarButtonItem = editButtonItem()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    override func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        //update the model
        itemStore.moveItemAtIndex(sourceIndexPath.row, toIndex: destinationIndexPath.row)
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        //if the table view is asking to commit a delete command
        if editingStyle == .Delete {
            let item = itemStore.allItems[indexPath.row]
            
            let title = "Delete \(item.name)?"
            let message = "Are you sure you want to delete this item?"
            
            let ac = UIAlertController(title: title, message: message, preferredStyle: .ActionSheet)
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
            ac.addAction(cancelAction)
            
            let deleteAction = UIAlertAction(title: "Delete", style: .Destructive, handler: { (action) -> Void in
            //remove the item from the store
            self.itemStore.removeItem(item)
            
            //remove items image from store
            self.imageStore.deleteImageForKey(item.itemKey)
                
                
            //also remove that row from the table view with an animation
            self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        })
            ac.addAction(deleteAction)
            //present the alert controller
            presentViewController(ac, animated: true, completion: nil)
    }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell {
        //Get a new or recycled cell
        //create an  instance  of UITableviewcell,  with default appearance
        let cell = tableView.dequeueReusableCellWithIdentifier("ItemCell", forIndexPath: indexPath) as! ItemCell
        
        //Update the labels for new preferred text size
        cell.updateLabels()
        //set the text on the cell 
        let item = itemStore.allItems[indexPath.row]
        
//        cell.textLabel?.text = item.name
//        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        cell.nameLabel.text = item.name
        cell.serialNumberLabel.text = item.serialNumber
        cell.valueLabel.text = "$\(item.valueInDollars)"
        
        if item.valueInDollars < 50 {
            cell.backgroundColor = UIColor.redColor()
        }
        else {
            cell.backgroundColor = UIColor.greenColor()
        }
        
=======
    override func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return itemStore.allItems.count
    }
    
    override func tableView(tableView: UITableView,
            cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Get a new or recycled cell
        let cell = tableView.dequeueReusableCellWithIdentifier("ItemCell",
            forIndexPath: indexPath) as! ItemCell
                
        // Update the labels for the new preferred text size
        cell.updateLabels()
        
        // ​S​e​t​ ​t​h​e​ ​t​e​x​t​ ​o​n​ ​t​h​e​ ​c​e​l​l​ ​w​i​t​h​ ​t​h​e​ ​d​e​s​c​r​i​p​t​i​o​n​ ​o​f​ ​t​h​e​ ​i​t​e​m
        //​t​h​a​t​ ​i​s​ ​a​t​ ​t​h​e​ ​n​t​h​ ​i​n​d​e​x​ ​o​f​ ​i​t​e​m​s​,​ ​w​h​e​r​e​ ​n​ ​=​ ​r​o​w​ ​t​h​i​s​ ​c​e​l​l
        // ​w​i​l​l​ ​a​p​p​e​a​r​ ​i​n​ ​o​n​ ​t​h​e​ ​t​a​b​l​e​v​i​e​w
        let item = itemStore.allItems[indexPath.row]
                
        // Configure the cell with the Item
        cell.nameLabel.text = item.name
                
        cell.serialNumberLabel.text = item.serialNumber
        cell.valueLabel.text = "$\(item.valueInDollars)"
                
                if item.name == "No More Items!" {
                    return cell
                }
                
                if item.valueInDollars < 50 {
                    cell.backgroundColor = UIColor.redColor()
                }
                else {
                    cell.backgroundColor = UIColor.greenColor()
                }
                
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< HEAD
//        // get the height of the status bar
//        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
//        
//        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
//        tableView.contentInset = insets
//        tableView.scrollIndicatorInsets = insets
        
//        tableView.rowHeight = 65
=======
        // Get the height of the status bar
        
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 65
    }
    
<<<<<<< HEAD
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowItem" {
            if let row = tableView.indexPathForSelectedRow?.row {
                let item = itemStore.allItems[row]
                let detailViewController = segue.destinationViewController as! DetailViewController
=======
    override func tableView(tableView: UITableView,
        commitEditingStyle editingStyle: UITableViewCellEditingStyle,
        forRowAtIndexPath indexPath: NSIndexPath) {
        // If the table view is asking to commit a delete command...
            if editingStyle == .Delete {
                let item = itemStore.allItems[indexPath.row]
                
                let title = "Delete \(item.name)?"
                let message = "Are you sure you want to delete this item?"
                
                let ac = UIAlertController(title: title,
                    message: message,
                    preferredStyle:  .ActionSheet)
                
                let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
                ac.addAction(cancelAction)
                
                let deleteAction = UIAlertAction(title: "Remove", style: .Destructive,
                                handler: { (action) -> Void in
                
                // Remove the item from the store
                self.itemStore.removeItem(item)
                                    
                // Remove the item's image from the image store
                self.imageStore.deleteImageForKey(item.itemKey)
                
                // Also remove that row from the table view with an animation
                self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            })
                ac.addAction(deleteAction)
                
                // Present the alert controller
                presentViewController(ac, animated: true, completion: nil)
    
        }
            
    }
    override func tableView(tableView: UITableView,
        moveRowAtIndexPath sourceIndexPath: NSIndexPath,
        toIndexPath destinationIndexPath: NSIndexPath) {
            // Update the model
            itemStore.moveItemAtIndex(sourceIndexPath.row, toIndex: destinationIndexPath.row)
            tableView.reloadData()
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        let row = itemStore.allItems.count-1
        if row == indexPath.row {
            return false
        }
    return true
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // If the trigger segue is the "ShowItem" segue
        if segue.identifier == "ShowItem" {
            // Figure out which row was just tapped
            if let row = tableView.indexPathForSelectedRow?.row {
                // Get the item associated with this row and pass it along
                let item = itemStore.allItems[row]
                let detailViewController = segue.destinationViewController as! DetailViewController
                
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
                detailViewController.item = item
                detailViewController.imageStore = imageStore
            }
        }
    }
<<<<<<< HEAD
}

=======
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        navigationItem.leftBarButtonItem = editButtonItem()
    }
}









>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
