//
//  ViewController.swift
//  Tumblr Clone
//
//  Created by Chris Argonish on 11/1/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var coachMark: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeVC: UIViewController!
    var searchVC: UIViewController!
    var composeVC: UIViewController!
    var accountVC: UIViewController!
    var trendingVC: UIViewController!
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    var fadeTransition: FadeTransition!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        homeVC = main.instantiateViewController(withIdentifier: "homeVC")
        searchVC = main.instantiateViewController(withIdentifier: "searchVC")
        //composeVC = main.instantiateViewController(withIdentifier: "composeVC")
        accountVC = main.instantiateViewController(withIdentifier: "accountVC")
        trendingVC = main.instantiateViewController(withIdentifier: "trendingVC")
        
        viewControllers = [homeVC, searchVC, accountVC, trendingVC]
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
        
        UIView.animate(withDuration: 0.9, delay: 0.4, options: [.autoreverse, .repeat], animations: { 
                self.coachMark.transform = CGAffineTransform(translationX: 0, y: 15)
            }, completion: nil)
    }
    
    @IBAction func didPressTab(_ sender: UIButton) {
        
        let previousIndex = selectedIndex
        
        selectedIndex = sender.tag
        
        buttons[previousIndex].isSelected = false
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.isSelected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        func viewDidAppear(_ animated: Bool) {
            vc.didMove(toParentViewController: self)
        }
        
        if selectedIndex == 1  {
            coachMark.isHidden = true
        }
        
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        
        let composeViewController = segue.destination as! ComposeViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        composeViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        

        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        composeViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
    }
}

