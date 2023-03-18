//
//  Animation.swift
//  AnimationApp
//
//  Created by Дмитрий Лубов on 17.03.2023.
//

struct Animation {
    var preset: String {
        DataStore.shared.animations.randomElement() ?? ""
    }
    var curve: String {
        DataStore.shared.curves.randomElement() ?? ""
    }
    var force: Double {
        Double.random(in: 1...3)
    }
    var duration: Double {
        Double.random(in: 1.5...2.5)
    }
    var delay: Double {
        Double.random(in: 0...0.6)
    }
}
