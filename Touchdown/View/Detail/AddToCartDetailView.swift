//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: - Properties
    
    let product: Product
    
    var body: some View {
        Button {
            // TODO: Add action
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }
        .padding(15)
        .background(
            product.productColor
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView(product: testProduct)
}
