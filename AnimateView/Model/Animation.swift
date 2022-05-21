//
//  Animation.swift
//  AnimateView
//
//  Created by Maksim Grischenko on 21.05.2022.
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
        let someAnimation = Animation(preset: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "", curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "", force: CGFloat.random(in: 0...1), duration: CGFloat.random(in: 1...2), delay: CGFloat.random(in: 0.5...1))
        return someAnimation
    }
    
}
