//
//  AddPlayerPG.swift
//  MyTeam
//
//  Created by David on 4/19/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class AddPlayerPGViewController: UITableViewController, playerDelegate {
    
    var playersPG:[String]!
    var dictPG:NSDictionary!
    var delegate: playerDelegate?
    
    func getPlayer(value: String) {
        //dismissViewControllerAnimated(true, completion: nil)
        delegate?.getPlayer(value)
        navigationController?.popViewControllerAnimated(true)
    }

    
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
        dictPG = dict
        print("\(dict)")

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowStats" {
            if let row = tableView.indexPathForSelectedRow?.row {
                let item = playersPG[row]
                let PlayerStats = segue.destinationViewController as! PlayerStatsViewController
            }
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PG") as! PlayerNameCell
        
        cell.PlayerName.text = playersPG[indexPath.row]
        cell.delegate = self
        return cell
    }
    
}