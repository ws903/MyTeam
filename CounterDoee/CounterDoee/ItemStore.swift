//
//  itemStore.swift
//  CounterDoee
//
//  Created by Lorenzo Llamas on 4/5/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    
    func addItem(newItem: Item) {
        allItems.append(newItem)
    }
}
