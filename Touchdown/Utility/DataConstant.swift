//
//  DataConstant.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 26/10/24.
//

import Foundation

enum JsonFilesEnums: String, CaseIterable {
    case players = "player.json"
    case categories = "category.json"
    case products = "product.json"
    case brands = "brand.json"
}

let players: [PlayerCarousel] = Bundle.main.decode(JsonFilesEnums.players)
let categories: [Category] = Bundle.main.decode(JsonFilesEnums.categories)
let products: [Product] = Bundle.main.decode(JsonFilesEnums.products)
let brands: [Brand] = Bundle.main.decode(JsonFilesEnums.brands)
