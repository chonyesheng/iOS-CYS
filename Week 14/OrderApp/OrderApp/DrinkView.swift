//
//  DrinkView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct DrinkView: View {
    @Query(filter: #Predicate<MenuItem> { item in
        item.type == "Drink"
    }, sort: \MenuItem.name) var drinkItems: [MenuItem]
    
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        List {
            ForEach(drinkItems) { item in
                MenuItemView(item: item)
            }
        }
        .onAppear {
            if drinkItems.isEmpty {
                preloadMenuItems()
            }
        }
    }

    private func preloadMenuItems() {
        let sampleDrinks: [(name: String, price: Double, imageName: String?)] = [
            ("Cola", 2.5, "Cola"),
            ("Sprite", 2.0, "Sprite"),
            ("Pepsi", 2.0, "Pepsi"),
            ("Orange Juice", 3.5, "Orange Juice"),
            ("Iced Tea", 2.2, "Iced Tea"),
            ("Lemonade", 2.0, "Lemonade"),
            ("Coffee", 3.5, "Coffee"),
            ("Tea", 2.5, "Tea"),
            ("100 Plus", 2.5, "100 Plus"),
            ("Mineral Water", 1.0, "Mineral Water"),
            ("Watermelon Juice", 3.0, "Watermelon Juice"),
            ("Apple Juice", 3.0, "Apple Juice"),
            ("Mango Juice", 2.5, "Mango Juice"),
            ("Soymilk", 2.5, "Soymilk"),
            ("Milk", 2.7, "Milk"),
            ("Smoothie", 7.9, "Smoothie"),
            ("Milkshake", 6.9, "Milkshake"),
            ("Frappucino", 12.0, "Frappucino"),
            ("Kambucha Tea", 7.5, "Kambucha Tea"),
            ("RedBull", 3.5, "RedBull")
        ]

        for drink in sampleDrinks {
            let newItem = MenuItem(name: drink.name, type: "Drink", price: drink.price, imageName: drink.imageName)
            modelContext.insert(newItem)
        }
        
        try? modelContext.save()
    }
}

#Preview {
    DrinkView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}
