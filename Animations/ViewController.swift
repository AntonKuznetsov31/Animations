//
//  ViewController.swift
//  Animations
//
//  Created by Anton Kuznetsov on 8/20/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var animationName: SpringLabel!
    @IBOutlet weak var curve: SpringLabel!
    
    @IBOutlet var allLabels: [SpringLabel]!
    
    @IBOutlet weak var mainImageView: SpringImageView!
    @IBOutlet weak var mainButton: SpringButton!
    
    // MARK: - Private Properties
    
    private var myAnimation: (animation: String, curve: String) = ("", "")
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        myAnimation = Animation.getAnimation()
        updateUIWith(myAnimation)
    }
    
    // MARK: - IBActions
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        mainImageView.animation = myAnimation.animation
        mainImageView.curve = myAnimation.curve
        
        mainImageView.animate()
        animateLabelsWith(myAnimation)
        
        myAnimation = Animation.getAnimation()
        updateUIWith(myAnimation)
    }
    
    // MARK: - Private Methods
    
    private func updateUIWith(_ animation: (String, String)) {
        animationName.text = "Name: \(animation.0)"
        curve.text = "Curve: \(animation.1)"
        mainButton.setTitle(animation.0, for: .normal)
    }
    
    private func animateLabelsWith(_ animation: (String, String)) {
        for label in allLabels {
            label.animation = animation.0
            label.animate()
        }
    }
}
