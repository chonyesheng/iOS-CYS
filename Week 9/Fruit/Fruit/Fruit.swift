//
//  Fruit.swift
//  Fruit
//
//  Created by labuser on 15/01/2025.
//

import SwiftUI

struct FruitView: View {
    var body: some View {
        List {
            HStack {
                Image(systemName: "apple.logo")
                Text("Apple")
                Spacer()
            }
            .padding()
            
            HStack {
                Image(systemName: "birthday.cake.fill")
                Text("Cake")
                Spacer()
            }
            .padding()
            
            HStack {
                Image(systemName: "carrot.fill")
                Text("Carrot")
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    FruitView()
}
