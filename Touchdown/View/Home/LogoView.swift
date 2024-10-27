//
//  LogoView.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 26/10/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            Image(logoDark)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    LogoView()
}
