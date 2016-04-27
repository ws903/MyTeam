//
//  TableViewController.swift
//  MyTeam
//
//  Created by Lorenzo Llamas on 4/16/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

protocol  playerDelegate {
    func getPlayer(value: String)
}

class PlayerListViewController: UITableViewController, playerDelegate {
    
    var row1VC: Int?
    
    func getPlayer(value: String) {
        print(value)
        positions[row1VC!] = value
        tableView.reloadData()
        
    }
    
    
    var positions = ["PG", "SG", "SF", "PF", "C", "U"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return positions.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("position", forIndexPath: indexPath)
        
        cell.textLabel!.text = positions[indexPath.row]
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowPlayers" {
            if let row = tableView.indexPathForSelectedRow?.row {
                let item = positions[row]
                let addPlayerPGViewController = segue.destinationViewController as! AddPlayerPGViewController
                addPlayerPGViewController.delegate = self
                row1VC = row
                
            }
        }
    }
}