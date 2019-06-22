//
//  Pokemon.swift
//  Pokedex
//
//  Created by Brent Schooley on 6/21/19.
//  Copyright © 2019 Brent Schooley. All rights reserved.
//

import SwiftUI

struct Pokemon: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var types: [String]
    var hp: Int
    var attack: Int
    var defense: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case types = "type"
        case hp = "HP"
        case attack = "Attack"
        case defense = "Defense"
    }
}
