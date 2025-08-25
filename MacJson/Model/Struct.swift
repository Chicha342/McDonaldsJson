//
//  Struct.swift
//  MacJson
//
//  Created by Никита on 10.07.2025.
//

import Foundation

struct MenuItem: Identifiable, Codable {
    let id: Int
    let name: String
    let category: String
    let price: Int
    let description: String
    let image: String
}
