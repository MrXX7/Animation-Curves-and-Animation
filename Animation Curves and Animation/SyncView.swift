//
//  SyncView.swift
//  Animation Curves and Animation
//
//  Created by Oncu Ohancan on 22.04.2022.
//

import SwiftUI

struct SyncView: View {
    
    @State private var isSyncing: Bool = false
    
    let config: AnimationConfig
    
    private var rotationAnimation: Animation {
        config
        .animation
        .repeatForever(autoreverses: false)
    }
    var body: some View {
        
        VStack {
            
            Image(systemName: "arrow.2.circlepath")
                .symbolVariant(.circle.fill)
                .foregroundStyle(.blue)
                .font(.largeTitle)
                .rotationEffect(.init(degrees: isSyncing ? 360 : 0))
                .animation(isSyncing ? rotationAnimation: .default, value: isSyncing)
            
            Text(config.desctription)
        }
        .onAppear{
            isSyncing = true
        }
        
    }
}

struct SyncView_Previews: PreviewProvider {
    static var previews: some View {
        SyncView(config: .option.first!)
    }
}
