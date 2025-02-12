//
//  OrderAppApp.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI

@main
struct OrderAppApp: App {
    @State private var isLoggedIn: Bool = false 

    var body: some Scene {
        WindowGroup {
            
            if isLoggedIn {
                ContentView()
            } else {
                LoginView(isLoggedIn: $isLoggedIn)
            }
        }
        .modelContainer(for: MenuItem.self)
    }
}
