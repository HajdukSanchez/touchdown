//
//  DataConstant.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 26/10/24.
//

import Foundation

enum JsonFilesEnums: String, CaseIterable {
    case players = "player.json"
}

let players: [PlayerCarousel] = Bundle.main.decode(JsonFilesEnums.players)
