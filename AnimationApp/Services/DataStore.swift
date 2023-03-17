//
//  DataStore.swift
//  AnimationApp
//
//  Created by Дмитрий Лубов on 17.03.2023.
//

import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases.map { $0.rawValue }
    let curves = AnimationCurve.allCases.map { $0.rawValue }
    
    private init() {}
}
