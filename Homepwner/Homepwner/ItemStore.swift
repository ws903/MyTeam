//
//  ItemStor.swift
//  Homepwner
//
//  Created by David on 2/28/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ItemStore {
    
    init() {
        //for _ in 0..<5 {
        //    createItem()
        let noMore = Item(random: true)
        noMore.name = "No More Items!"
        allItems.append(noMore)
    }
    
    var allItems = [Item]()
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        let emptyItem = allItems.popLast()
        
        allItems.append(newItem)
        allItems.append(emptyItem!)
        
        return newItem
    }
    
    func removeItem(item: Item) {
        if let index = allItems.indexOf(item) {
            allItems.removeAtIndex(index)
        }
    }
    
    func moveItemAtIndex(fromIndex: Int, toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        if allItems.count-1 == toIndex {
            return
        }
        
        // Get reference to object being moved so you can reinsert it
        let movedItem = allItems[fromIndex]
        
        // Remove item from array
        allItems.removeAtIndex(fromIndex)
        
        // Insert item in array at new location
        allItems.insert(movedItem, atIndex: toIndex)
        
        
    }
}
