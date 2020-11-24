//
//  FancyScoreView.swift
//  LearnEnvironmentObjetct
//
//  Created by Zhaoyang Chen on 2020-11-24.
//

import SwiftUI

struct FancyScoreView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        VStack {
            Text("\(settings.score)")
                .font(.largeTitle)
            
            Button("Increment Score") {
                settings.score += 1
            }
        }
        .padding()
        .background(Color.orange)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView()
            .environmentObject(UserSettings())
    }
}
