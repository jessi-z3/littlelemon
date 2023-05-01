//
//  MenuItem.swift
//  LittleLemon
//
//  Created by Jessi Zimmerman on 4/26/23.
//

import Foundation

struct MenuItem: Codable, Identifiable {
    var id = UUID()
    let title: String
    let price: String
    let image: String
    let category: String
    let dishDescription: String
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case dishDescription = "description"
        case price = "price"
        case image = "image"
        case category = "category"
    }
}
