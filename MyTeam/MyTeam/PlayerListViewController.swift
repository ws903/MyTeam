//
//  TableViewController.swift
//  MyTeam
//
//  Created by Lorenzo Llamas on 4/16/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit


class PlayerListViewController: UITableViewController {
    
    let positions = ["PG", "SG", "SF", "PF", "C", "U"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return positions.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("position")
        
        cell?.detailTextLabel?.text = positions[indexPath.row]
        
        return cell!
    }
}