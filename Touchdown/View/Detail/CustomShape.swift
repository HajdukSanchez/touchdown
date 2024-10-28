//
//  CustomShape.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: [.topLeft, .topRight],
            cornerRadii: CGSize(width: 35, height: 35)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    CustomShape()
        .frame(width: 300, height: 100, alignment: .center)
        .padding()
}
