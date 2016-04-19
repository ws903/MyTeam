//
//  ViewController.swift
//  MyTeam
//
//  Created by David on 4/10/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class PlayerListViewController: UIViewController {
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for index in 1...9 {
            print("\(index)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

