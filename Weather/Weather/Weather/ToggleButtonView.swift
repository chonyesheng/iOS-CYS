//
//  ToggleButtonView.swift
//  Weather
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI

struct ToggleButtonView: View {
    @Binding var backgroundColor: Color
    @State private var isToggled = false
    
    var body: some View {
        Button(action: {
            isToggled.toggle()
            backgroundColor = isToggled ? Color.blue : Color.white
        }) {
            Text(isToggled ? "Restore" : "Change Background")
                .font(.title2)
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    ToggleButtonView(backgroundColor: .constant(Color.white))
}
