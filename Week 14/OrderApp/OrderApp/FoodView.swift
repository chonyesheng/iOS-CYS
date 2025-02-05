//
//  FoodView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct FoodView: View {
    @Query(filter: #Predicate<MenuItem> { item in
        item.type == "Food"
    }, sort: \MenuItem.name) var foodItems: [MenuItem]
    
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        List {
            ForEach(foodItems) { item in
                MenuItemView(item: item)
            }
        }
        .onAppear {
            if foodItems.isEmpty {
                preloadMenuItems()
            }
        }
    }

    private func preloadMenuItems() {
        let sampleFoods: [(name: String, price: Double)] = [
            ("Chicken Slice", 20.5),
            ("Subway Melt", 19.0),
            ("Spicy Italian", 28.0),
            ("Tuna", 23.2),
            ("Roasted Chicken", 30.8),
            ("Veggie Delite", 27.5),
            ("Roast Beef", 41.0),
            ("Seafood & Crab", 27.5),
            ("Italian B.M.T", 25.0),
            ("Chicken Teriyaki", 22.5),
            ("Turkey Breast", 37.5),
            ("Meatball Maninara", 24.3),
            ("Steak & Cheese", 22.5),
            ("Subway Club", 18.5),
            ("Turkey Breast & Chicken Slice", 32.5),
            ("Vanilla Cookies", 7.6),
            ("Black Forest Chocolate Cookies", 15.8),
            ("Mac & Cheese Bowl", 11.5),
            ("Cheesy Meat Bowl", 9.3),
            ("Black Forest Ham", 15.7)
        ]

        for food in sampleFoods {
            let newItem = MenuItem(name: food.name, type: "Food", price: food.price)
            modelContext.insert(newItem)
        }
        
        try? modelContext.save()
    }
}

#Preview {
    FoodView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}
