//
//  TrendingViewController.swift
//  Tumblr Clone
//
//  Created by Chris Argonish on 11/11/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: imageView.frame.size.width, height: imageView.frame.size.height)
        scrollView.delegate = self
        
    }
}
