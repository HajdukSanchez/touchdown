//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeOut) {
                    shop.unSelectProduct()
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            Spacer()
            Button {
                // TODO: Add action
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    NavigationBarDetailView()
        .padding()
        .background(.gray)
        .environmentObject(Shop())
}
