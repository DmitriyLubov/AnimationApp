//
//  Animation.swift
//  AnimationApp
//
//  Created by Дмитрий Лубов on 17.03.2023.
//

struct Animation {
    var animation: String
    var curve: String
    
    var force: Double
    var duration: Double
    var delay: Double
    
    static func getAnimation() -> Animation {
        let animation = DataStore.shared.animations.randomElement() ?? ""
        let curve = DataStore.shared.curves.randomElement() ?? ""
        
        return Animation(
            animation: animation,
            curve: curve,
            force: Double.random(in: 1...3),
            duration: Double.random(in: 1...2.5),
            delay: Double.random(in: 0...0.6)
        )
    }
}
