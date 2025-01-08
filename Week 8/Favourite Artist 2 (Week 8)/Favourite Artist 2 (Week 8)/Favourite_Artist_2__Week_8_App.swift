//
//  Favourite_Artist_2__Week_8_App.swift
//  Favourite Artist 2 (Week 8)
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

@main
struct Favourite_Artist_2__Week_8_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
