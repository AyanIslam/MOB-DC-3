//
//  Lesson on Autolayout.swift
//  
//
//  Created by Ayan Islam on 7/13/15.
//
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let squarerek = UIView(frame: CGRectMake(20, 20, 80, 80))
        squarerek.backgroundColor = UIColor.blackColor()
        view.addSubview(squarerek)
        
        let squareBRect = CGRectMake(
            squarerek.frame.origin.x = 100,
            squarerek.frame.origin.y = 150,
            squarerek.frame.size.width,
            squarerek.frame.size.height)
        
        let squareB = UIView(frame: squareBRect)
        
        squareB.backgroundColor = UIColor.redColor()
        view.addSubview(squareB)
        
        let squareC = UIView(frame: CGRectMake(
            squareB.bounds.origin.x,
            squareB.bounds.origin.y,
            squareB.bounds.size.width/2.0,
            squareB.bounds.size.height/2.0))
        squareC.backgroundColor - UIColor.blackColor()
        squareB.addSubview(squareC)
    }
    
}