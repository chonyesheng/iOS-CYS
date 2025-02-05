//
//  OrderAppApp.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI

import SwiftUI
import SwiftData

@main
struct OrderAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: MenuItem.self)
    }
}

