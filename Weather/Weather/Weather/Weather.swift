//
//  Weather.swift
//  Weather
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI

// Weather struct to store the daily weather data
struct Weather: Identifiable {
    let id = UUID()
    let day: String
    let temperature: String
    
    let description: String 
    let icon: String
}
