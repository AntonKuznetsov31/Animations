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
    
    static func getAnimations() -> [String] {
        return DataManager.animations
    }
    
    static func getCurves() -> [String] {
        return DataManager.curves
    }
}
