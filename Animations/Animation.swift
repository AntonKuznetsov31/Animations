//
//  Animation.swift
//  Animations
//
//  Created by Anton Kuznetsov on 8/20/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import Foundation
import Spring

struct Animation {
    
    static private let animations = [
        "wobble",
        "shake",
        "zoomIn",
        "morph",
        "zoomIn",
        "swing",
        "fadeIn"
    ]
    
    static private let curve = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring"
    ]
    
    static public func getAnimation() -> (String, String) {
        return (animations.randomElement()!, curve.randomElement()!)
    }
}
