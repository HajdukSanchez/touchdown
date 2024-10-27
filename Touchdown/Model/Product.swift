//
//  Product.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 27/10/24.
//

import Foundation
import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    // MARK: - Computed properties
    var productColor: Color {
        if color.isEmpty {
            return Color.white
        }
        if color.count < 3 {
            return Color(red: color[0], green: color[0], blue: color[0])
        }
        return Color(red: color[0], green: color[1], blue: color[2])
    }
}
