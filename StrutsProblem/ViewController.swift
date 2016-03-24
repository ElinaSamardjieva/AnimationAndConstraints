//
//  ViewController.swift
//  StrutsProblem
//
//  Created by Elina Samardjieva on 3/24/16.
//  Copyright © 2016 Elina Samardjieva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var blueView: UIView!
    @IBOutlet var heightCounstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueView?.translatesAutoresizingMaskIntoConstraints = false // Autosizing not working
        
        var constraint = NSLayoutConstraint(item: blueView, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 1, constant: 0.5)
        view.addConstraint(constraint)
        
        
        
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        
        sender.selected = !sender.selected
        
        if sender.selected {
            heightCounstraint.constant = 240
        } else {
            heightCounstraint.constant = 360
        }
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.view.layoutIfNeeded()
        }
    }


}

