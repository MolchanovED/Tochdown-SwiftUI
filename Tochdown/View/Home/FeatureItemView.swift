//
//  FeatureItemView.swift
//  Tochdown
//
//  Created by Egor Molchanov on 07.08.2022.
//

import SwiftUI

struct FeatureItemView: View {
    // Mark: - Preview
    
    let player: Player
    
    // Mark: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// Mark: - Preview
struct FeatureItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        FeatureItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackgound)
    }
}
