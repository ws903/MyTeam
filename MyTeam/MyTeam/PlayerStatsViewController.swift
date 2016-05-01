//
//  ViewController.swift
//  MyTeam
//
//  Created by David on 4/10/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit


class PlayerStatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let game1 = player.objectForKey("game1") as! [String:String]
        playerName.text = playerKey
        assist1.text = game1["ast"]
        rebound1.text = game1["reb"]
        points1.text = game1["pts"]
        
        let game2 = player.objectForKey("game2") as! [String:String]
        playerName.text = playerKey
        assist2.text = game2["ast"]
        rebound2.text = game2["reb"]
        points2.text = game2["pts"]
        
        let game3 = player.objectForKey("game3") as! [String:String]
        playerName.text = playerKey
        assist3.text = game3["ast"]
        rebound3.text = game3["reb"]
        points3.text = game3["pts"]
        
    }
    
    var player: NSDictionary!
    
    var playerKey: String!
    
    @IBOutlet var playerName: UILabel!
    @IBOutlet var assist1: UILabel!
    @IBOutlet var rebound1: UILabel!
    @IBOutlet var points1: UILabel!
    @IBOutlet var assist2: UILabel!
    @IBOutlet var rebound2: UILabel!
    @IBOutlet var points2: UILabel!
    @IBOutlet var assist3: UILabel!
    @IBOutlet var rebound3: UILabel!
    @IBOutlet var points3: UILabel!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

