//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by David on 2/28/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    
    var itemStore: ItemStore!
    
    override func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            if section == 0 {
                return itemStore.lessItems.count
            }
            else {
                return itemStore.moreItems.count
            }
    }
    
    override func tableView(tableView: UITableView,
            cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Get a new or recycled cell
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell",
            forIndexPath: indexPath)
        
        // ​S​e​t​ ​t​h​e​ ​t​e​x​t​ ​o​n​ ​t​h​e​ ​c​e​l​l​ ​w​i​t​h​ ​t​h​e​ ​d​e​s​c​r​i​p​t​i​o​n​ ​o​f​ ​t​h​e​ ​i​t​e​m
        //​t​h​a​t​ ​i​s​ ​a​t​ ​t​h​e​ ​n​t​h​ ​i​n​d​e​x​ ​o​f​ ​i​t​e​m​s​,​ ​w​h​e​r​e​ ​n​ ​=​ ​r​o​w​ ​t​h​i​s​ ​c​e​l​l
        // ​w​i​l​l​ ​a​p​p​e​a​r​ ​i​n​ ​o​n​ ​t​h​e​ ​t​a​b​l​e​v​i​e​w
        if indexPath.section == 0{
            let item = itemStore.lessItems[indexPath.row]
            
            cell.textLabel?.text = item.name
            let last = itemStore.lessItems.count-1
            if indexPath.row != last {
                cell.detailTextLabel?.text = "$\(item.valueInDollars)"
                }
        }
            
        else {
            let item = itemStore.moreItems[indexPath.row]
            
            cell.textLabel?.text = item.name
            let last = itemStore.moreItems.count-1
            if indexPath.row != last {
                cell.detailTextLabel?.text = "$\(item.valueInDollars)"
                }
            }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get the height of the status bar
        
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left:  0, bottom:  0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableview: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Less Than 50"
        }
        else {
            return "More Than 50"
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            let last = itemStore.lessItems.count-1
            if indexPath.row == last {
                return 44.0
            }
        }
        else {
            let last = itemStore.moreItems.count-1
            if indexPath.row == last {
                return 44.0
            }
        }
        return 60
    }
}


