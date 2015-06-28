//
//  ViewController.swift
//  AIM Class Project
//
//  Created by Ayan Islam on 6/22/15.
//  Copyright (c) 2015 Ayan Islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sexField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
        setupButtons()

    }
    
    func setupTextFields() {
        nameField.placeholder = "Name"
        ageField.placeholder = "Age"
        sexField.placeholder = "Sex"
        locationField.placeholder = "Location"
        
        formatTextFields(nameField)
        formatTextFields(ageField)
        formatTextFields(sexField)
        formatTextFields(locationField)
    
    }

    func formatTextFields(textField: UITextField) {
        textField.keyboardType = (textField == ageField) ? UIKeyboardType.NumberPad : .ASCIICapable
        textField.textColor = (textField == sexField) ? UIColor.redColor() : UIColor.blueColor()
    }
    
    func setupButtons() {
        clearButton.setTitle("Clear", forState: UIControlState.Normal)
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
    }
    
    @IBAction func submitAction(sender: UIButton) {
        
    }
    
    override func prepareForSegue(segue:UIStoryboardSegue, sender: AnyObject?) {
        println("prepare for segue")
            if segue.identifier == "showProfile" {
                let destinationVC = segue.destinationViewController as! ProfileViewController
                destinationVC.name = nameField.text
                destinationVC.age = ageField.text
                destinationVC.sex = sexField.text
                destinationVC.location = locationField.text
            }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}