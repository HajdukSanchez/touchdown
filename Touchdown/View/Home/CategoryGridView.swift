//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct CategoryGridView: View {
    
    // MARK: - Properties
    
    private let columnSpacing: CGFloat = 10
    private var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                Section(content: {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }, header: {
                    SectionView()
                }, footer: {
                    SectionView(rotateClockwise: true)
                })
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    CategoryGridView()
}
