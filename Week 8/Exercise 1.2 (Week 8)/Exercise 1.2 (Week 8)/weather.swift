//
//  weather.swift
//  Exercise 1.2 (Week 8)
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct Weather: View {
var name: String
var image: String
var tempature: String

    
    var body: some View {
        HStack(spacing: 10) {
            Text(name)
                .font(.title)
                .fontWeight(.bold)
            
            Image(systemName: image)
                .symbolRenderingMode(.multicolor)
                .font(.largeTitle)
                .foregroundStyle(.tint)
            
            Text(tempature)
                .font(.title2)
                .fontWeight(.semibold)
            
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

#Preview {
    Weather(name: "MON", image: "moon.stars", tempature: "33C")
    Weather(name: "TUE", image: "moon.stars", tempature: "33C")
    Weather(name: "WED", image: "moon.stars", tempature: "33C")
    Weather(name: "THU", image: "moon.stars", tempature: "33C")
    Weather(name: "FRI", image: "moon.stars", tempature: "33C")
    Weather(name: "MON", image: "moon.stars", tempature: "33C")
        
}
