//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct BrandGridView: View {
    
    // MARK: - Properties
    
    private let columnSpacing: CGFloat = 10
    private var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }
            .frame(height: 200)
            .padding(15)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    BrandGridView()
}
