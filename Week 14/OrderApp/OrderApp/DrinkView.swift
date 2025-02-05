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
        let sampleDrinks: [(name: String, price: Double)] = [
            ("Cola", 2.5),
            ("Sprite", 2.0),
            ("Pepsi", 2.0),
            ("Orange Juice", 3.5),
            ("Iced Tea", 2.2),
            ("Lemonade", 2.0),
            ("Coffee", 3.5),
            ("Tea", 2.5),
            ("100 Plus", 2.5),
            ("Mineral Water", 1.0),
            ("Watermelon Juice", 3.0),
            ("Apple Juice", 3.0),
            ("Mango Juice", 2.5),
            ("Soymilk", 2.5),
            ("Milk", 2.7),
            ("Smoothie", 7.9),
            ("Milkshake", 6.9),
            ("Frappucino", 12.0),
            ("Kambucha Tea", 7.5),
            ("RedBull", 3.5)
        ]

        for drink in sampleDrinks {
            let newItem = MenuItem(name: drink.name, type: "Drink", price: drink.price)
            modelContext.insert(newItem)
        }
        
        try? modelContext.save()
    }
}

#Preview {
    DrinkView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}
