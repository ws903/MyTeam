//
//  Item.swift
//  Homepwner
//
<<<<<<< HEAD
//  Created by Lorenzo Llamas on 2/28/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
=======
//  Created by David on 2/28/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
//

import UIKit

class Item: NSObject, NSCoding {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: NSDate
    let itemKey: String
    
<<<<<<< HEAD
    
    init(name:String, serialNumber: String?, valueInDollars: Int){
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = NSDate()
        self.itemKey = NSUUID().UUIDString
        
        super.init()
    }
    
=======
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObjectForKey("name") as! String
        dateCreated = aDecoder.decodeObjectForKey("dateCreated") as! NSDate
        itemKey = aDecoder.decodeObjectForKey("itemKey") as! String
        serialNumber = aDecoder.decodeObjectForKey("serialNumber") as! String?
<<<<<<< HEAD
=======
        
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
        valueInDollars = aDecoder.decodeIntegerForKey("valueInDollars")
        
        super.init()
    }
    
<<<<<<< HEAD
=======
    init(name: String, serialNumber: String?, valueInDollars: Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = NSDate()
        self.itemKey = NSUUID().UUIDString
        
        super.init()
    }
    
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = NSUUID().UUIDString.componentsSeparatedByString("-").first!
            
<<<<<<< HEAD
                self.init(name: randomName,
                    serialNumber: randomSerialNumber,
                    valueInDollars: randomValue)
=======
            self.init(name: randomName,
                serialNumber: randomSerialNumber,
                valueInDollars: randomValue)
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
        }
        else {
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
<<<<<<< HEAD
        aCoder.encodeObject(name, forKey: "name")
        aCoder.encodeObject(dateCreated, forKey: "dateCreated")
        aCoder.encodeObject(itemKey, forKey: "itemKey")
        aCoder.encodeObject(serialNumber, forKey: "serialNumber")
        
        aCoder.encodeInteger(valueInDollars, forKey: "valueInDollars")
    }
}
=======
        aCoder.encodeObject(name, forKey:  "name")
        aCoder.encodeObject(dateCreated, forKey: "dateCreated")
        aCoder.encodeObject(itemKey, forKey:  "itemKey")
        aCoder.encodeObject(serialNumber, forKey:  "serialNumber")
        
        aCoder.encodeObject(valueInDollars, forKey:  "vallueInDollars")
    }
    
}
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
