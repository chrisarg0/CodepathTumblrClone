//
//  AccountViewController.swift
//  Tumblr Clone
//
//  Created by Chris Argonish on 11/11/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    var loginVC: UIViewController!
    var fadeTransition: FadeTransition!
    var viewControllers: [UIViewController]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        loginVC = main.instantiateViewController(withIdentifier: "loginVC")
        
        viewControllers = [loginVC]
        
        // Do any additional setup after loading the view.
    }

    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        
        let loginViewController = segue.destination as! LoginViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        loginViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        loginViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
    }
}
