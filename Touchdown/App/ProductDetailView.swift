//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - Properties
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Section {
                NavigationBarDetailView()
                HeaderDetailView(product: product)
                TopbarDetailView(product: product)
            }
            .padding(.horizontal)
            .zIndex(1) // shows it at front
            VStack(alignment: .center, spacing: 0) {
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                ScrollView(.vertical) {
                    Text(product.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }
                .scrollIndicators(.hidden)
                QuantityFavoriteDetailView()
                    .padding(.top, 10)
                AddToCartDetailView(product: product)
                    .padding(.top, 20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
                    .ignoresSafeArea()
            )
        }
        .zIndex(0) // shows it behind
        .background(
            product.productColor
                .ignoresSafeArea()
        )
    }
}

#Preview {
    ProductDetailView(product: testProduct)
}
