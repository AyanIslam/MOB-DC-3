//
//  ViewController.swift
//  Midterm - iOS Calculator
//
//  Created by Ayan Islam on 7/18/15.
//  Copyright (c) 2015 Ayan Islam. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var screenField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    var firstNumber = Float()
    var secondNumber = Float()
    var result = Float()
    var typingNumber = false
    var operationButton = ""
        
    }
    
    @IBAction func numberButton(sender: AnyObject) {
        var numberButton = sender.currentTitle
        if typingNumber == true {
            screenField.text = screenField.text! + numberButton!!;
        } else {
            screenField.text = numberButton;
        }
        typingNumber = true
    }
    
    @IBAction func operationButton(sender: AnyObject) {
        operationButton = sender.currentTitle!!
        firstNumber = (screenField.text! as NSString).floatValue
        typingNumber = false
    }
    
    @IBAction func decimalButton(sender: AnyObject) {
        var decimalButton = sender.currentTitle
        screenField.text = screenField.text! + decimalButton!!
    }
    
    @IBAction func equalButton(sender: AnyObject) {
        secondNumber = (screenField.text! as NSString).floatValue
        if operationButton == "+" {
            result = firstNumber + secondNumber
        } else if operationButton == "-" {
            result = firstNumber - secondNumber
        } else if operationButton == "x" {
            result = firstNumber * secondNumber
        } else  if operationButton == "/"{
            result =  firstNumber / secondNumber
        } else if operationButton == "%" {
            result = (firstNumber * secondNumber) / 100
        } else {
        screenField.text = "\(result)"
        }
    }

    @IBAction func acButton(sender: AnyObject) {
        firstNumber = 0
        secondNumber = 0
        result = 0
        screenField.text = "\(result)"
    }
    
}

