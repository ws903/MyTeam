//
//  PlayerNameCell.swift
//  MyTeam
//
//  Created by David on 4/26/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit
class PlayerNameCell: UITableViewCell {
    
    var delegate: playerDelegate?
    
    @IBOutlet var PlayerName: UILabel!
    @IBAction func AddPlayer(sender: AnyObject) {
        delegate?.getPlayer(PlayerName.text!)

    }
}