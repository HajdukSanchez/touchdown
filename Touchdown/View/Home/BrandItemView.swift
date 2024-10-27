//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct BrandItemView: View {
    
    // MARK: - Properties
    
    let brand: Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(
                Color.white
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            )
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}

#Preview {
    BrandItemView(brand: testBrand)
        .padding()
}
