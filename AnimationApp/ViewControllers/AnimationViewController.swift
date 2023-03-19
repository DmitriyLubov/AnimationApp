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
    @IBOutlet var propertyLabels: [UILabel]!
    
    private var animation = Animation.getAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

    @IBAction func runButtonTapped(_ sender: UIButton) {
        if sender.currentTitle != "Run" {
            setParamsFor()
            setLabels()
        }
        
        springAnimationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }

}

// MARK: Private Methods
private extension AnimationViewController {
    func setupView() {
        springAnimationView.layer.cornerRadius = 10
        
        setParamsFor()
        setLabels()
    }
    
    func setParamsFor() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
    }
    
    func setLabels() {
        for (label, property) in zip(propertyLabels, animation.description) {
            label.text = property
        }
    }
}
