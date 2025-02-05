//
//  ProfileView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct ProfileView: View {
    @Query var allItems: [MenuItem]
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        Button(action: { clearAllMenuItems() }) {
                Text("Clear All Menu Items")
        }

    }

    private func clearAllMenuItems() {
        for item in allItems {
            modelContext.delete(item)
        }
        try? modelContext.save()
    }

}
