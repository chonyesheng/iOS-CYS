//
//  ContentView.swift
//  Fruit
//
//  Created by labuser on 15/01/2025.
//

import SwiftUI
import MapKit

struct ContentView: View {
    let fruits = ["Apple", "Cake", "Carrot"]
    
    var body: some View {
        List(fruits, id: \.self) { fruit in
            Text(fruit)
        }
    }
}


#Preview {
    ContentView()
}
