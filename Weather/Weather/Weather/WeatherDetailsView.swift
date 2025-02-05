//
//  WeatherDetailsView.swift
//  Weather
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI

struct WeatherDetailsView: View {
    let city: String
    
    // Mock data for the 7-day forecast
    let forecast: [Weather] = [
        Weather(day: "Monday", temperature: "25°C", description: "Sunny", icon: "sunny"),
        Weather(day: "Tuesday", temperature: "27°C", description: "Partly Cloudy", icon: "cloudy"),
        Weather(day: "Wednesday", temperature: "33°C", description: "Hot", icon: "hot"),
        Weather(day: "Thursday", temperature: "20°C", description: "Rainy", icon: "rain"),
        Weather(day: "Friday", temperature: "25°C", description: "Sunny", icon: "sunny"),
        Weather(day: "Saturday", temperature: "23°C", description: "Cloudy", icon: "cloudy"),
        Weather(day: "Sunday", temperature: "23°C", description: "Mild", icon: "mild")
    ]
    
    @State private var backgroundColor = Color.white
    
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
                    Text(dayForecast.temperature)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text(dayForecast.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            ToggleButtonView(backgroundColor: $backgroundColor) // Button to toggle the background
        }
        .padding()
        .background(backgroundColor) // Background color changes dynamically
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

#Preview {
    WeatherDetailsView(city: "Tokyo") 
}
