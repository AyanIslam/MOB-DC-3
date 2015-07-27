//
//  ViewController.swift
//  Property List
//
//  Created by Ayan Islam on 7/22/15.
//  Copyright (c) 2015 Ayan Islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var typingMovies: UITextField!
    
    @IBOutlet weak var addMovies: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let moviesPath = NSBundle.mainBundle().pathForResource("Movies", ofType: "plist")
        
        if let moviesPath = moviesPath {
            let movies = NSArray(contentsOfFile: moviesPath)
            println(movies)
        }
        
    }

}

