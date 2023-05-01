//
//  MenuItem.swift
//  LittleLemon
//
//  Created by Jessi Zimmerman on 4/26/23.
//

import Foundation

struct MenuItem: Decodable {
    let title: String
    let price: String
    let image: String
    let category: String
    let dishDescription: String
    let id: UUID
}
