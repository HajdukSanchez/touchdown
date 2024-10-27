//
//  SectionView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct SectionView: View {
    
    // MARK: - Properties
    
    @State var rotateClockwise : Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        }
        .background(
            colorGray
                .clipShape(RoundedRectangle(cornerRadius: 12))
        )
        .frame(width: 85)
    }
}

#Preview {
    HStack(spacing: 20) {
        SectionView()
        SectionView(rotateClockwise: true)
    }
}
