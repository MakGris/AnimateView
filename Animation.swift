//
//  Animation.swift
//  
//
//  Created by Maksim Grischenko on 20.05.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getAnimation() -> Animation {
        let someAnimation = Animation(preset: AnimationPreset.allCases.randomElement(), curve: AnimationCurve.allCases.randomElement(), force: 0...1, duration: 1...3, delay: 0...2)
    }
    
}
