//
//  ConversionViewController.swift
//  WorldTrotter
//
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
        
    var celsiusValue: Double? {
        if let value = fahrenheitValue {
            return (value - 32) * (5/9)
        }
        else {
            return nil
        }
    }
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func fahrenheitFiledEditingChanged(textField: UITextField) {
        if let text = textField.text, value = Double(text) {
            fahrenheitValue = value
        }
        else {
            fahrenheitValue = nil
        }
    }
    
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





