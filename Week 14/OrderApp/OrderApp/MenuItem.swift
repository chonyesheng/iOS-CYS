//
//  MenuItem.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftData
import Foundation

@Model
class MenuItem: Identifiable {
    var id: UUID
    var name: String
    var type: String // "Food" or "Drink"
    var price: Double
    var isAddedToOrder: Bool

    init(id: UUID = UUID(), name: String, type: String, price: Double, isAddedToOrder: Bool = false) {
        self.id = id
        self.name = name
        self.type = type
        self.price = price
        self.isAddedToOrder = isAddedToOrder
    }
}
