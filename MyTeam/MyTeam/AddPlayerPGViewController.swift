//
//  AddPlayerPG.swift
//  MyTeam
//
//  Created by David on 4/19/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class AddPlayerPGViewController: UITableViewController {
    
    let playersPG = ["Stephen Curry", "Chris Paul", "John Wall", "Russell Westbrook", "Damian Lillard", "Kyrie Irving"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playersPG.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PG")
        
        cell?.detailTextLabel?.text = playersPG[indexPath.row]
        
        return cell!
    }
}