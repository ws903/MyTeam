//
//  ConversionViewController.swift
//  WorldTrotter
//
<<<<<<< HEAD
//  Created by Lorenzo Llamas on 2/8/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
//

import Foundation
import UIKit

class ConversionViewController: UIViewController {
    @IBOutlet var celsiusLabel: UILabel!
    
    var fahrenheitValue: Double? {
        didSet {
        updateCelsiusLabel()
        }
    }
    
=======
//  Created by David on 2/7/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit
import Foundation

class ConversionViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        // Always call the supper implementation of viewDidLoad
        super.viewDidLoad()
        
        print("ConversionViewController loaded its view.")
    }
    
    @IBOutlet var celsiusLabel: UILabel!
    
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()

    var fahrenheitValue: Double? {
        didSet {
            updateCelsiusLabel()
        }
    }
        
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
    var celsiusValue: Double? {
        if let value = fahrenheitValue {
            return (value - 32) * (5/9)
        }
        else {
            return nil
        }
    }
    
<<<<<<< HEAD
    func updateCelsiusLabel() {
        if let value = celsiusValue {
            celsiusLabel.text = numberFormatter.stringFromNumber(value)
        }
        else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func fahrenheitFieldEditingChanged(textField:UITextField){
=======
    @IBOutlet var textField: UITextField!
    
    @IBAction func fahrenheitFiledEditingChanged(textField: UITextField) {
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
        if let text = textField.text, value = Double(text) {
            fahrenheitValue = value
        }
        else {
            fahrenheitValue = nil
        }
    }
    
<<<<<<< HEAD
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    func textField(textField: UITextField,
         shouldChangeCharactersInRange range: NSRange,
                                       replacementString string: String) -> Bool {
        let existingTextHasDecimalSeparator = textField.text?.rangeOfString(".")
        let replacementTextHasDecimalSeparator = string.rangeOfString(".")
        
        if existingTextHasDecimalSeparator != nil &&
            replacementTextHasDecimalSeparator != nil {
            return false
        }
        else {
            return true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ConversionViewController has loaded its view")
    }
    
}
=======
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
    
    func updateCelsiusLabel() {
        if let value = celsiusValue {
            celsiusLabel.text = numberFormatter.stringFromNumber(value)
        }
        else {
            celsiusLabel.text = "???"
        }
    }
    
    func textField(textField: UITextField,
        shouldChangeCharactersInRange range: NSRange,
        replacementString string: String) -> Bool {
            
            let lC: NSCharacterSet = NSCharacterSet.letterCharacterSet()
            let sC: NSCharacterSet = NSCharacterSet.symbolCharacterSet()
            let wC: NSCharacterSet = NSCharacterSet.whitespaceCharacterSet()
            
            let existingTextHasDecimalSeparator = textField.text?.rangeOfString(".")
            let replacementTextHasDecimalSeparator = string.rangeOfString(".")
            
            //let currentLocale = NSLocale.currentLocale()
            //let decimalSeparator =
            //    currentLocale.objectForKey(NSLocaleDecimalSeparator) as! String
            
            //let existingTextHasDecimalSeparator
            //    = textField.text?.rangeOfString(decimalSeparator)
            //let replacementTextHasDecimalSeparator = string.rangeOfString(decimalSeparator)
            
            if existingTextHasDecimalSeparator != nil &&
                replacementTextHasDecimalSeparator != nil {
                    return false
            }
            else if string.rangeOfCharacterFromSet(lC) == nil &&
                string.rangeOfCharacterFromSet(sC) == nil &&
                string.rangeOfCharacterFromSet(wC) == nil {
                return true
            }
            else {
                return false
            }
    }
    }





>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
