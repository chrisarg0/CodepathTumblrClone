//
//  ComposeViewController.swift
//  Tumblr Clone
//
//  Created by Chris Argonish on 11/11/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var videoBtn: UIButton!
    @IBOutlet weak var chatBtn: UIButton!
    @IBOutlet weak var linkBtn: UIButton!
    @IBOutlet weak var textBtn: UIButton!
    @IBOutlet weak var quoteBtn: UIButton!
    @IBOutlet weak var photoBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        videoBtn.frame.origin.y = 700
        chatBtn.frame.origin.y = 700
        linkBtn.frame.origin.y = 700
        textBtn.frame.origin.y = 700
        quoteBtn.frame.origin.y = 700
        photoBtn.frame.origin.y = 700
    }
    
    @IBAction func dismissVC(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.videoBtn.frame.origin.y = 150
            }, completion: nil)
        
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.chatBtn.frame.origin.y = 150
            }, completion: nil)
        
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.linkBtn.frame.origin.y = 150
            }, completion: nil)
        
        UIView.animate(withDuration: 0.4, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.textBtn.frame.origin.y = 300
            }, completion: nil)
        
        UIView.animate(withDuration: 0.4, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.quoteBtn.frame.origin.y = 300
            }, completion: nil)
        
        UIView.animate(withDuration: 0.4, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.photoBtn.frame.origin.y = 300
            }, completion: nil)
    }
}
