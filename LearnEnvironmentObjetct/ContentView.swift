//
//  ContentView.swift
//  LearnEnvironmentObjetct
//
//  Created by Zhaoyang Chen on 2020-11-24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("\(settings.score)")
                .font(.largeTitle)
            
            Button("Increment Score") {
                settings.score += 1
            }
            
            Spacer()
            
            FancyScoreView()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserSettings())
    }
}
