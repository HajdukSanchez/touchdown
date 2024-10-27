//
//  TopbarDetailView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct TopbarDetailView: View {
    
    // MARK: - Properties
    
    let product: Product
    
    @State private var isAnimating : Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                Text(product.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -75)
        }
        .opacity(isAnimating ? 1 : 0)
        .onAppear {
            withAnimation(.easeInOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

#Preview {
    TopbarDetailView(product: testProduct)
}
