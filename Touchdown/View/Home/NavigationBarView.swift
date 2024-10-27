//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 26/10/24.
//

import SwiftUI

struct NavigationBarView: View {
    
    // MARK: - Properties
    
    @State private var isAnimated : Bool = false
    
    var body: some View {
        HStack {
            Button {
                // TODO: Add action
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
            }
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }
            Spacer()
            Button {
                // TODO: Add action
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundStyle(.black)
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }
        }
    }
}

#Preview {
    NavigationBarView()
}
