//
//  MenuItemView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI

struct MenuItemView: View {
    @Bindable var item: MenuItem

    var body: some View {
        VStack(alignment: .leading) {
            Text(item.name)
                .font(.headline)

            Text("$\(item.price, specifier: "%.2f")")
                .font(.subheadline)

            Button(action: {
                item.isAddedToOrder.toggle()
            }) {
                Text(item.isAddedToOrder ? "Remove" : "Add to Order")
                    .font(.caption)
                    .padding(6)
                    .background(item.isAddedToOrder ? Color.red : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    let newItem = MenuItem(name: "Pizza", type: "Food", price: 12.50)
    MenuItemView(item: newItem)
}
