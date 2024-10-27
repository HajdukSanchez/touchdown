//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct ProductItemView: View {
    
    // MARK: - Properties
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(
                product.productColor
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            )
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ProductItemView(product: testProduct)
        .frame(width: 200, height: 300, alignment: .center)
    
}
