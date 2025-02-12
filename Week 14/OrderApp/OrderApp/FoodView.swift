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
        let sampleFoods: [(name: String, price: Double, imageName: String?)] = [
            ("Chicken Slice", 20.5, "Chicken Slice"),
            ("Subway Melt", 19.0, "Subway Melt"),
            ("Spicy Italian", 28.0, "Spicy Italian"),
            ("Tuna", 23.2, "Tuna"),
            ("Roasted Chicken", 30.8, "Roasted Chicken"),
            ("Veggie Delite", 27.5, "Veggie Delite"),
            ("Roast Beef", 41.0, "Roast Beef"),
            ("Seafood & Crab", 27.5, "Seafood & Crab"),
            ("Italian B.M.T.", 25.0, "Italian B.M.T."),
            ("Chicken Teriyaki", 22.5, "Chicken Teriyaki"),
            ("Turkey Breast", 37.5, "Turkey Breast"),
            ("Meatball Maninara", 24.3, "Meatball Maninara"),
            ("Steak & Cheese", 22.5, "Steak & Cheese"),
            ("Subway Club", 18.5, "Subway Club"),
            ("Turkey Breast & Chicken Slice", 32.5, "Turkey Breast & Chicken Slice"),
            ("Vanilla Cookies", 7.6, "Vanilla Cookies"),
            ("Black Forest Chocolate Cookies", 15.8, "Black Forest Chocolate Cookies"),
            ("Mac & Cheese Bowl", 11.5, "Mac & Cheese Bowl"),
            ("Cheesy Meat Bowl", 9.3, "Cheesy Meat Bowl"),
            ("Black Forest Ham", 15.7, "Black Forest Ham")
        ]

        for food in sampleFoods {
            let newItem = MenuItem(name: food.name, type: "Food", price: food.price, imageName: food.imageName)
            modelContext.insert(newItem)
        }
        
        try? modelContext.save()
    }
}

#Preview {
    FoodView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}
