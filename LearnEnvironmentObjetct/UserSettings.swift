//
//  UserSettings.swift
//  LearnEnvironmentObjetct
//
//  Created by Zhaoyang Chen on 2020-11-24.
//

import Foundation

class UserSettings: ObservableObject {
    @Published var score: Int
    
    init() {
        score = 0
    }
}
