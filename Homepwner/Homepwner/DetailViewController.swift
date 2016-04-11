//
//  DetailViewController.swift
//  Homepwner
//
<<<<<<< HEAD
//  Created by Lorenzo Llamas on 3/19/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
=======
//  Created by David on 3/20/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
<<<<<<< HEAD
    
=======
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
    @IBOutlet var nameField: UITextField!
    @IBOutlet var serialNumberField: UITextField!
    @IBOutlet var valueField: UITextField!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
<<<<<<< HEAD
    @IBAction func takePicture(sender: UIBarButtonItem) {
        let imagePicker = UIImagePickerController()
        //if device has camera, take picture. else pick photo
=======
    
    @IBAction func takePicture(sender: UIBarButtonItem) {
        
        let imagePicker = UIImagePickerController()
        
        // If the device has a camera, take a picture; otherwise,
        // just pick from photo library
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
        if UIImagePickerController.isSourceTypeAvailable(.Camera) {
            imagePicker.sourceType = .Camera
        }
        else {
            imagePicker.sourceType = .PhotoLibrary
        }
<<<<<<< HEAD
        imagePicker.delegate = self
        //place image picker on screen
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    var item: Item! {
        didSet {
        navigationItem.title = item.name
        }
    }
    
    var imageStore: ImageStore!
    
    @IBAction func backgroundTapped(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
=======
    
        imagePicker.delegate = self
        
        
        // Place image picker on the screen
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func backgroundTapped(sender: AnyObject) {
        view.endEditing(true)
    }
    var item: Item! {
        didSet {
            navigationItem.title = item.name
        }
    }
    var imageStore: ImageStore!
    
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
    let numberFormatter: NSNumberFormatter = {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .DecimalStyle
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }()
    
<<<<<<< HEAD
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        //get picked image from info dictionary
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        //store image in imagestore for item's key
        imageStore.setImage(image, forKey: item.itemKey)
        
        //put that image on the screen in the image view
        imageView.image = image
        
        //take image picker off screen
        //you must call  this dismiss method
        dismissViewControllerAnimated(true, completion: nil)
    }
    
=======
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
    let dateFormatter: NSDateFormatter = {
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .NoStyle
        return formatter
    }()
    
<<<<<<< HEAD
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
=======
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        nameField.text = item.name
        serialNumberField.text = item.serialNumber
<<<<<<< HEAD
//        valueField.text = "\(item.valueInDollars)"
//        dateLabel.text = "\(item.dateCreated)"
        valueField.text = numberFormatter.stringFromNumber(item.valueInDollars)
        dateLabel.text = dateFormatter.stringFromDate(item.dateCreated)
        
        //get the item key
        let key = item.itemKey
        
        //if there is associated item, display it
        let imageToDisplay = imageStore.imageForKey(key)
        imageView.image = imageToDisplay
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        //clear first responder
        view.endEditing(true)
        //"Save" changes
=======
        valueField.text = numberFormatter.stringFromNumber(item.valueInDollars)
        dateLabel.text = dateFormatter.stringFromDate(item.dateCreated)
        
        // Get the item key
        let key = item.itemKey
        
        // If there is an associated image with the item
        // display it on the image view
        let imageToDisplay = imageStore.imageForKey(key)
        imageView.image = imageToDisplay
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // Clear first responder
        view.endEditing(true)
        
        // "Save" changes to item
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
        item.name = nameField.text ?? ""
        item.serialNumber = serialNumberField.text
        
        if let valueText = valueField.text,
<<<<<<< HEAD
        value = numberFormatter.numberFromString(valueText) {
            item.valueInDollars = value.integerValue
=======
            value = numberFormatter.numberFromString(valueText) {
                item.valueInDollars = value.integerValue
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
        }
        else {
            item.valueInDollars = 0
        }
    }
<<<<<<< HEAD
=======
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: AnyObject]) {
        
        // Get picked image from info dictionary
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Store the image in the ImageStore for the item's key
        imageStore.setImage(image, forKey: item.itemKey)
        
        // Put that image on the screen in the image view
        imageView.image = image
        
        // Take image picker off the screen -
        // you must call this dismiss method
        dismissViewControllerAnimated(true, completion: nil)
    }
    
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
}
