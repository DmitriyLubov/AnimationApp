//
//  Animation.swift
//  AnimationApp
//
//  Created by Дмитрий Лубов on 17.03.2023.
//

struct Animation {
    let preset: String
    let curve: String
    
    let force: Double
    let duration: Double
    let delay: Double

    var description: [String] {
        [
            preset,
            curve,
            String(format: "%.2f", force),
            String(format: "%.2f", duration),
            String(format: "%.2f", delay)
        ]
    }
}

extension Animation {
    static func getAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animations.randomElement() ?? "",
            curve: DataStore.shared.curves.randomElement() ?? "",
            force: Double.random(in: 1...3),
            duration: Double.random(in: 1.5...2.5),
            delay: Double.random(in: 0...0.6)
        )
    }
}
