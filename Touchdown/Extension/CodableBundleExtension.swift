//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Jozek Andrzej Hajduk Sanchez on 26/10/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: JsonFilesEnums) -> T {
        guard let url = self.url(forResource: file.rawValue, withExtension: nil) else {
            fatalError("Failed to locate \(file.rawValue) in bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file.rawValue) in bundle.")
        }
        let decoder = JSONDecoder()
        guard let decodeData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file.rawValue) in bundle.")
        }
        return decodeData
    }
}
