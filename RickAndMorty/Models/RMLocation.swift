//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Razumov Pavel on 23.09.2024.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
