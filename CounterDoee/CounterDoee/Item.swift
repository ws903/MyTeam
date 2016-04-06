//
//  Item.swift
//  CounterDoee
//
//  Created by Lorenzo Llamas on 4/5/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
//

import Foundation

class Item:NSObject {
    var count:Int
    var name: String?
    let itemKey: String
    
    init(name:String){
        self.count = 0
        self.name = name
        self.itemKey = NSUUID().UUIDString
        super.init()
}
}