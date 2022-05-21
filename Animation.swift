//
//  Animation.swift
//  
//
//  Created by Maksim Grischenko on 20.05.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getAnimation() -> Animation {
        let someAnimation = Animation(name: AnimationPreset.allCases.randomElement(), curve: AnimationCurve.allCases.randomElement(), force: 0...1, duration: 1...3, delay: 0...2)
    }
    
}
