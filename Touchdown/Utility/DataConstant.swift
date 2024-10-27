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
}

let players: [PlayerCarousel] = Bundle.main.decode(JsonFilesEnums.players)
let categories: [Category] = Bundle.main.decode(JsonFilesEnums.categories)
