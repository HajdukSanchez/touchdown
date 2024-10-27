//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - Properties
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    HeaderDetailView(product: testProduct)
        .padding()
        .background(.gray)
}
