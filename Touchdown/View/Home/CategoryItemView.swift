//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct CategoryItemView: View {
    
    // MARK: - Properties
    
    let category: Category
    
    var body: some View {
        Button {
            // TODO: Add action
        } label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                Spacer()
            }
            .padding()
            .background(
                Color.white
                    .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                    )
            )
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
        }

    }
}

#Preview {
    CategoryItemView(category: testCategory)
        .padding()
        .background(colorBackground)
}
