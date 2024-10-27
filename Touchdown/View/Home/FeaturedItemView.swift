//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 26/10/24.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - Properties
    
    let player: PlayerCarousel
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    FeaturedItemView(player: testPlayerCarousel)
        .padding()
}
