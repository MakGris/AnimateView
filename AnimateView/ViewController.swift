//
//  ViewController.swift
//  AnimateView
//
//  Created by Maksim Grischenko on 20.05.2022.
//

import UIKit
import Spring

class ViewController: UIViewController {

    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    
    @IBOutlet var buttonLabel: UIButton!
    @IBOutlet var animationView: SpringView!
    
    private var animationType = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tuneUI()
    }
    
    @IBAction func runAnimationButtonPressed(_ sender: UIButton) {
        animationView.animation = animationType.preset
        animationView.curve = animationType.curve
        animationView.force = animationType.force
        animationView.duration = animationType.duration
        animationView.animate()
        tuneUI()
        animationType = Animation.getAnimation()
        buttonLabel.setTitle(animationType.preset, for: .normal)

    }
    
}
extension ViewController {
    func tuneUI() {
        presetLabel.text = "Preset: \(animationType.preset)"
        curveLabel.text = "Curve: \(animationType.curve)"
        forceLabel.text = "Force: \(animationType.force)"
        durationLabel.text = "Duration: \(animationType.duration)"
        delayLabel.text = "Delay: \(animationType.delay)"
    }
}

