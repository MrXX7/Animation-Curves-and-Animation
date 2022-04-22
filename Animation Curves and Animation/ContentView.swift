//
//  ContentView.swift
//  Animation Curves and Animation
//
//  Created by Oncu Ohancan on 22.04.2022.
//

import SwiftUI

struct AnimationConfig: Identifiable {
    let id = UUID()
    let animation: Animation
    let desctription: String
}

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3),spacing: 32) {
                
                ForEach(AnimationConfig.option) { config in
                    SyncView(config: config)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension AnimationConfig {
    static let option: [AnimationConfig] = [
        .init(animation: .linear(duration: 1), desctription: "linear 1"),
        .init(animation: .linear(duration: 2), desctription: "linear 2"),
        .init(animation: .linear(duration: 3), desctription: "linear 3"),
        
            .init(animation: .easeIn, desctription: "Ease In"),
        .init(animation: .easeOut, desctription: "Ease Out"),
        .init(animation: .easeInOut, desctription: "Ease In Out"),
        
            .init(animation: .interactiveSpring(), desctription: "Interactive Spring"),
        .init(animation: .spring(), desctription: "spring")
        
    ]
}
