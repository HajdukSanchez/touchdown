//
//  FooterView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 26/10/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image(logoLineal)
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)
            //Text("Copyright © Jozek Hajduk\nAll right reserved")
            //    .font(.footnote)
            //    .fontWeight(.bold)
            //    .foregroundStyle(.gray)
            //    .multilineTextAlignment(.center)
            //    .layoutPriority(1)
        }
    }
}

#Preview {
    FooterView()
}
