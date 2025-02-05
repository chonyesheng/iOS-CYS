//
//  ContentView.swift
//  Weather
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI

struct ContentView: View {
    let asia = ["Tokyo", "Singapore", "Shanghai"]
    let europe = ["New York", "London", "Canada"]
    
    @State private var searchText = ""
    @State private var isSheetPresented = false
    
    var filteredAsia: [String] {
        if searchText.isEmpty {
            return asia
        } else {
            return asia.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var filteredEurope: [String] {
        if searchText.isEmpty {
            return europe
        } else {
            return europe.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section(header: Text("Asia")) {
                        ForEach(filteredAsia, id: \.self) { city in
                            NavigationLink {
                                WeatherDetailsView(city: city) // Navigate to weather details view
                            } label: {
                                Text(city)
                            }
                        }
                    }
                    
                    Section(header: Text("Europe")) {
                        ForEach(filteredEurope, id: \.self) { city in
                            NavigationLink {
                                WeatherDetailsView(city: city) // Navigate to weather details view
                            } label: {
                                Text(city)
                            }
                        }
                    }
                }
                .searchable(text: $searchText)
                .navigationTitle("Cities")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            isSheetPresented = true
                        }) {
                            Text("+")
                                .font(.system(size: 50))
                        }
                    }
                }
                .sheet(isPresented: $isSheetPresented) {
                    Text("This application is created by Chon Ye Sheng")
                        .presentationDetents([.height(500), .large])
                        .font(.headline)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
