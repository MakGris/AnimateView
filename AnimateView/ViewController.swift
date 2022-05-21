//
//  ViewController.swift
//  AnimateView
//
//  Created by Maksim Grischenko on 20.05.2022.
//

import Spring

class ViewController: UIViewController {
    
//   MARK: IB Outlets
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var animationView: SpringView!
    
//    MARK: Private properties
    private var animationType = Animation.getAnimation()
    
//    MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tuneUI()
    }
    
//    MARK: IB Actions
    @IBAction func runAnimationButtonPressed(_ sender: UIButton) {
        startAnimation()
        tuneUI()
        animationType = Animation.getAnimation()
        sender.setTitle(animationType.preset, for: .normal)

    }
    
}

//MARK: Private Methods
extension ViewController {
    private func tuneUI() {
        presetLabel.text = "Preset: \(animationType.preset)"
        curveLabel.text = "Curve: \(animationType.curve)"
        forceLabel.text = String(format: "Force: %.2f", animationType.force)
        durationLabel.text = String(format: "Duration: %.2f", animationType.duration)
        delayLabel.text = String(format: "Delay: %.2f", animationType.delay)
    }
    private func startAnimation() {
        animationView.animation = animationType.preset
        animationView.curve = animationType.curve
        animationView.force = animationType.force
        animationView.duration = animationType.duration
        animationView.animate()
    }
}

