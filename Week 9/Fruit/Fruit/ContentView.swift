//
//  ContentView.swift
//  Fruit
//
//  Created by labuser on 15/01/2025.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var isSheetPresented = false

    var body: some View {
        VStack {
            Button("Show Sheet") {
                isSheetPresented = true
            }
            .sheet(isPresented: $isSheetPresented) {
                Text("How are you??")
            }
        }
    }
}

#Preview {
    ContentView()
}
