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
    @IBOutlet weak var curveName: SpringLabel!
    
    @IBOutlet weak var mainImageView: SpringImageView!
    @IBOutlet weak var mainButton: SpringButton!
    
    // MARK: - Private Properties
    
    private var myAnimations: [String] = []
    private var myCurves: [String] = []
    private var index = 0
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        myAnimations = Animation.getAnimations()
        myCurves = Animation.getCurves()
        updateUIUsing(index)
        mainButton.setTitle(myAnimations[index], for: .normal)
    }
    
    // MARK: - IBActions
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if index >= myAnimations.count - 1 {
            index = 0
        }
        updateUIUsing(index)
        animateUIUsing(index)
        index += 1
        mainButton.setTitle(myAnimations[index], for: .normal)
    }
    
    // MARK: - Private Methods
    
    private func updateUIUsing(_ index: Int) {
        animationName.text = "Name: \(myAnimations[index])"
        curveName.text = "Curve: \(myCurves[index])"
    }
    
    private func animateUIUsing(_ index: Int) {
        
        mainImageView.animation = myAnimations[index]
        mainImageView.curve = myCurves[index]
        animationName.animation = myAnimations[index]
        animationName.curve = myCurves[index]
        curveName.animation = myAnimations[index]
        curveName.curve = myCurves[index]
        
        mainImageView.animate()
        mainButton.animate()
        animationName.animate()
        curveName.animate()
    }
}
