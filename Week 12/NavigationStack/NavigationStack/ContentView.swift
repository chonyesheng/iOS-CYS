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
    let asia = ["Tokyo", "Singapore", "Shang Hai"]
    let europe = ["New York", "London", "Canada"]
    @State private var isSheetPresented = false
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Asia")) {
                    ForEach(asia, id: \.self) { asia in
                        NavigationLink {
                            Text("Item's Detail \(asia)")
                        } label: {
                            Text(asia)
                        }
                    }
                }
                
                Section(header: Text("Europe")) {
                    ForEach(europe, id: \.self) { europe in
                        NavigationLink {
                            Text("Item's Detail \(europe)")
                        } label: {
                            Text(europe)
                        }
                    }
                }
            }
            .navigationTitle("Cities")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isSheetPresented = true
                        
                    }){
                        
                        Text("+")
                            .font(.system(size: 50))
                    }
                }
            }
            .sheet(isPresented: $isSheetPresented) {
                Text("This application is created by Chon Ye Sheng")
                    .presentationDetents([.height(30), .large])
                    .font(.headline)
                    .padding()
            }
        }
    }
}

struct WeatherDetailsView: View {
    let city: String
    
    let forecast: [Weather] = [
        Weather(day: "Monday", tempature: "25C"),
        Weather(day: "Tuesday", tempature: "27C"),
        Weather(day: "Wednesday", tempature: "33C"),
        Weather(day: "Thursday", tempature: "20C"),
        Weather(day: "Friday", tempature: "25C"),
        Weather(day: "Saturday", tempature: "23C"),
        Weather(day: "Sunday", tempature: "23C")
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
