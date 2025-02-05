//
//  ContentView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            FoodView()
                .tabItem {
                    Label("Food", systemImage: "fork.knife")
                }

            DrinkView()
                .tabItem {
                    Label("Drink", systemImage: "cup.and.saucer")
                }

            OrderSummaryView()
                .tabItem {
                    Label("Order Summary", systemImage: "cart")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}

