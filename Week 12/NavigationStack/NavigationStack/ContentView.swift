//
//  ContentView.swift
//  NavigationStack
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct Weather: Identifiable {
    let id = UUID()
    let day: String
    let tempature: String
}

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
                                WeatherDetailsView(city: city)
                            } label: {
                                Text(city)
                            }
                        }
                    }
                    
                    Section(header: Text("Europe")) {
                        ForEach(filteredEurope, id: \.self) { city in
                            NavigationLink {
                                WeatherDetailsView(city: city)
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

struct WeatherDetailsView: View {
    let city: String
    
    let forecast: [Weather] = [
        Weather(day: "Monday", tempature: "25°C"),
        Weather(day: "Tuesday", tempature: "27°C"),
        Weather(day: "Wednesday", tempature: "33°C"),
        Weather(day: "Thursday", tempature: "20°C"),
        Weather(day: "Friday", tempature: "25°C"),
        Weather(day: "Saturday", tempature: "23°C"),
        Weather(day: "Sunday", tempature: "23°C")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("7 Day Forecast for \(city)")
                .font(.title2)
                .padding(.bottom, 10)
            
            List(forecast) { dayForecast in
                HStack {
                    Text(dayForecast.day)
                        .font(.headline)
                    Spacer()
                    Text(dayForecast.tempature)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}

