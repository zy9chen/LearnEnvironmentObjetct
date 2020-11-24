//
//  FancyScoreView.swift
//  LearnEnvironmentObjetct
//
//  Created by Zhaoyang Chen on 2020-11-24.
//

import SwiftUI

struct FancyScoreView: View {
    @Binding var score: Int
    
    var body: some View {
        VStack {
            Text("\(score)")
                .font(.largeTitle)
            
            Button("Increment Score") {
                score += 1
            }
        }
        .padding()
        .background(Color.orange)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView(score: .constant(0))
    }
}
