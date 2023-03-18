//
//  AnimationViewController.swift
//  AnimationApp
//
//  Created by Дмитрий Лубов on 17.03.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLavel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation = Animation()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

    @IBAction func runButtonTapped(_ sender: UIButton) {
        if sender.currentTitle != "Run" {
            let preset = sender.currentTitle?["Run ".endIndex...] ?? ""
            
            setParamsFor(animation: String(preset))
            setLabels()
        }
        
        springAnimationView.animate()
        
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }

}

// MARK: Private Methods
private extension AnimationViewController {
    func setupView() {
        springAnimationView.layer.cornerRadius = 10
        
        setParamsFor(animation: animation.preset)
        setLabels()
    }
    
    func setParamsFor(animation preset: String) {
        springAnimationView.animation = preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
    }
    
    func setLabels() {
        presetLabel.text = springAnimationView.animation
        curveLabel.text = springAnimationView.curve
        forceLavel.text = String(format: "%.2f", springAnimationView.force)
        durationLabel.text = String(format: "%.2f", springAnimationView.duration)
        delayLabel.text = String(format: "%.2f", springAnimationView.delay)
    }
}
