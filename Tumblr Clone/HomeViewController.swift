//
//  HomeViewController.swift
//  Tumblr Clone
//
//  Created by Chris Argonish on 11/11/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var spinnerView: UIImageView!
    
    @IBOutlet weak var coachMark: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spinnerView.alpha = 0
        
    }
}
