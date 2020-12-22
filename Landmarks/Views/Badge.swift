//
//  Badge.swift
//  Landmarks
//
//  Created by Caleb R on 12/19/20.
//

import SwiftUI

struct Badge: View {
    
    static let rotationCount = 8
    
    
    var badgeSymbols: some View {
        ForEach(0..<Badge.rotationCount) { i in
            RotatedBadgeSymbol(angle: .degrees((( Double(i) / Double(Badge.rotationCount)) * 360)))
        }
        .opacity(0.5)
    }

    
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2, y: geometry.size.height * (3/4))
            }
            
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
