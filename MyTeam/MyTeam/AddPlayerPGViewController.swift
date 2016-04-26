//
//  AddPlayerPG.swift
//  MyTeam
//
//  Created by David on 4/19/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class AddPlayerPGViewController: UITableViewController {
    
    var playersPG:[String]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        jsonParsingFromFile()
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playersPG.count
    }
    
    func jsonParsingFromFile()
    {
        let path: NSString = NSBundle.mainBundle().pathForResource("nbaPG", ofType: "json")!
        let data : NSData = try! NSData(contentsOfFile: path as String, options: NSDataReadingOptions.DataReadingMapped)
        self.startParsing(data)
    }
    
    func startParsing(data :NSData)
    {
        let dict: NSDictionary!=(try! NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers)) as! NSDictionary
        let pgNames = dict.allKeys as! [String]
        print("\(pgNames)")
        playersPG = pgNames
        print("\(dict)")

    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PG")
        
        cell?.detailTextLabel?.text = playersPG[indexPath.row]
        
        return cell!
    }
}