//
//  ItemStor.swift
//  Homepwner
//
//  Created by David on 2/28/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ItemStore {
    
    var moreItems = [Item]()
    var lessItems = [Item]()
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        
        if newItem.valueInDollars > 50 {
            moreItems.append(newItem)
        }
        else {
            lessItems.append(newItem)
        }
        return newItem
    }
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    let noMore = Item(random: true)
    noMore.name = "No More Items!"
    lessItems.append(noMore)
    moreItems.append(noMore)
    
    }
}
