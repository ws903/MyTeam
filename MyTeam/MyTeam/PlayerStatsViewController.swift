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
        nameLabel.layer.borderColor = UIColor.blackColor().CGColor
        nameLabel.layer.borderWidth = 1.0
        game1Label.layer.borderColor = UIColor.blackColor().CGColor
        game1Label.layer.borderWidth = 1.0
        game2Label.layer.borderColor = UIColor.blackColor().CGColor
        game2Label.layer.borderWidth = 1.0
        game3Label.layer.borderColor = UIColor.blackColor().CGColor
        game3Label.layer.borderWidth = 1.0
        
        gameBorder1.layer.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.3).CGColor
        gameBorder1.layer.borderWidth = 1.0
        gameBorder2.layer.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.3).CGColor
        gameBorder2.layer.borderWidth = 1.0
        gameBorder3.layer.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.3).CGColor
        gameBorder3.layer.borderWidth = 1.0
        
        game1Name.textColor = UIColor.whiteColor()
        game2Name.textColor = UIColor.whiteColor()
        game3Name.textColor = UIColor.whiteColor()
        
        let game1 = player.objectForKey("game1") as! [String:String]
        playerName.text = playerKey
        fg1.text = game1["fg_percent"]
        ft1.text = game1["ft_percent"]
        rebound1.text = game1["reb"]
        assist1.text = game1["ast"]
        block1.text = game1["blk"]
        steal1.text = game1["steal"]
        turnover1.text = game1["to"]
        points1.text = game1["pts"]
        
        let game2 = player.objectForKey("game2") as! [String:String]
        playerName.text = playerKey
        
        fg2.text = game2["fg_percent"]
        ft2.text = game2["ft_percent"]
        rebound2.text = game2["reb"]
        assist2.text = game2["ast"]
        block2.text = game2["blk"]
        steal2.text = game2["steal"]
        turnover2.text = game2["to"]
        points2.text = game2["pts"]
        
        let game3 = player.objectForKey("game3") as! [String:String]
        playerName.text = playerKey
        
        fg3.text = game3["fg_percent"]
        ft3.text = game3["ft_percent"]
        rebound3.text = game3["reb"]
        assist3.text = game3["ast"]
        block3.text = game3["blk"]
        steal3.text = game3["steal"]
        turnover3.text = game3["to"]
        points3.text = game3["pts"]
        
    }
    
    var player: NSDictionary!
    
    var playerKey: String!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var game1Name: UILabel!
    @IBOutlet var game2Name: UILabel!
    @IBOutlet var game3Name: UILabel!
    @IBOutlet var game1Label: UILabel!
    @IBOutlet var game2Label: UILabel!
    @IBOutlet var game3Label: UILabel!
    @IBOutlet var gameBorder1: UILabel!
    @IBOutlet var gameBorder2: UILabel!
    @IBOutlet var gameBorder3: UILabel!
    
    @IBOutlet var recentGames: UILabel!
    @IBOutlet var playerName: UILabel!
    
    @IBOutlet var fg1: UILabel!
    @IBOutlet var ft1: UILabel!
    @IBOutlet var rebound1: UILabel!
    @IBOutlet var assist1: UILabel!
    @IBOutlet var block1: UILabel!
    @IBOutlet var steal1: UILabel!
    @IBOutlet var turnover1: UILabel!
    @IBOutlet var points1: UILabel!
    
    
    @IBOutlet var fg2: UILabel!
    @IBOutlet var ft2: UILabel!
    @IBOutlet var rebound2: UILabel!
    @IBOutlet var assist2: UILabel!
    @IBOutlet var block2: UILabel!
    @IBOutlet var steal2: UILabel!
    @IBOutlet var turnover2: UILabel!
    @IBOutlet var points2: UILabel!
    
    
    @IBOutlet var fg3: UILabel!
    @IBOutlet var ft3: UILabel!
    @IBOutlet var rebound3: UILabel!
    @IBOutlet var assist3: UILabel!
    @IBOutlet var block3: UILabel!
    @IBOutlet var steal3: UILabel!
    @IBOutlet var turnover3: UILabel!
    @IBOutlet var points3: UILabel!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

