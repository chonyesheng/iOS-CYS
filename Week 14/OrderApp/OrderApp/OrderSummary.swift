//
//  OrderSummary.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct OrderSummaryView: View {
    @Query var orderItems: [MenuItem]

    var body: some View {
        VStack {
            List(orderItems.filter { $0.isAddedToOrder }) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Text("RM\(item.price, specifier: "%.2f")")
                }
            }

            Text("Total: RM\(calculateOrderTotal(), specifier: "%.2f")")
                .font(.headline)
                .padding()
        }
    }

    private func calculateOrderTotal() -> Double {
        var total: Double = 0
        for item in orderItems.filter({ $0.isAddedToOrder }) {
            total += item.price
        }
        return total
    }
}
