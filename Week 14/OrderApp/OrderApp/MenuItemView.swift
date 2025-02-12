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
            
            if let imageName = item.imageName,
               let uiImage = UIImage(named: imageName) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipped()
            }
            
            
            Text(item.name)
                .font(.headline)

            Text("RM\(item.price, specifier: "%.2f")")
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
    let newItem = MenuItem(name: "Roasted Chicken", type: "Food", price: 30.80)
    MenuItemView(item: newItem)
}
