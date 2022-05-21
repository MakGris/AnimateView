//
//  Animation.swift
//  
//
//  Created by Maksim Grischenko on 20.05.2022.
//

import Foundation
import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getAnimation() -> Animation {
        let presets = Spring.AnimationPreset.allCases
        let curves = Spring.AnimationCurve.allCases
        let someAnimation = Animation(preset: presets.randomElement()?.rawValue ?? "", curve: curves.randomElement()?.rawValue ?? "", force: 1, duration: 1, delay: 1)
        return someAnimation
    }
    
}
