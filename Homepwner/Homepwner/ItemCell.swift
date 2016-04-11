//
//  ItemCell.swift
//  Homepwner
//
<<<<<<< HEAD
//  Created by Lorenzo Llamas on 2/29/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
=======
//  Created by David on 2/28/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumberLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    func updateLabels() {
        let bodyFont = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        nameLabel.font = bodyFont
        valueLabel.font = bodyFont
        
        let caption1Font = UIFont.preferredFontForTextStyle(UIFontTextStyleCaption1)
        serialNumberLabel.font = caption1Font
    }
    
<<<<<<< HEAD

=======
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
}
