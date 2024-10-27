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
            Spacer()
        }
        .background(
            product.productColor
                .ignoresSafeArea()
        )
    }
}

#Preview {
    ProductDetailView(product: testProduct)
}
