//
//  ContentView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 26/10/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView()
                .padding()
                .background(.white)
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    CarouselView()
                        .padding(.vertical, 20)
                        .frame(height: 300)
                    FooterView()
                        .padding(.horizontal)
                }
            }
            .scrollIndicators(.hidden)
        }
        .background(colorBackground.ignoresSafeArea())
    }
}

#Preview {
    ContentView()
}
