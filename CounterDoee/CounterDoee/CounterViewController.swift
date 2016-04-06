//
//  ViewController.swift
//  CounterDoee
//
//  Created by Lorenzo Llamas on 4/5/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController, UITextFieldDelegate {

    var item = Item(name: "stuff")
    
    var itemStore:ItemStore!
    
    @IBOutlet var counterName: UITextField!
    
    @IBOutlet var counterLabel: UILabel!

    
    @IBAction func countDown(sender: AnyObject) {
        if (item.count > 0){
            item.count = item.count - 1
            counterLabel.text = "\(item.count)"
        }
    }
    
    @IBAction func countUp(sender: AnyObject) {
        item.count = item.count + 1
        counterLabel.text = "\(item.count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

