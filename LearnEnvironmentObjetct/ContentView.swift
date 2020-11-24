//
//  ContentView.swift
//  LearnEnvironmentObjetct
//
//  Created by Zhaoyang Chen on 2020-11-24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var settings: UserSettings
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("\(settings.score)")
                .font(.largeTitle)
            
            Button("Increment Score") {
                settings.score += 1
            }
            
            Spacer()
            
            FancyScoreView(score: $settings.score)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let settings = UserSettings()
        ContentView(settings: settings)
    }
}
