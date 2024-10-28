//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    
    // MARK: - Properties
    
    @State private var counter : Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
                    .foregroundStyle(counter <= 0 ? .gray : .black)
            }
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button {
                if counter < 10 {
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
                    .foregroundStyle(counter >= 10 ? .gray : .black)
            }
            Spacer()
            Button {
                // TODO: Add action
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            }
        }
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavoriteDetailView()
}
