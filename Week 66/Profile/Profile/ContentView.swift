//
//  ContentView.swift
//  Profile
//
//  Created by labuser on 17/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("Turtle")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image("cys")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                Text("cys")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white.opacity(0.8))
                
                Text("""
                    Passionate iOS Developer with experience building dynamic and user-friendly applications. Skilled in Swift, UIKit, and SwiftUI. Eager to bring creative ideas to life and solve challenging problems.
                """)
                    .font(.body)
                    .foregroundColor(.first)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 2)
                
                Spacer()
                
                HStack(spacing: 30) {
                    Image("LinkedIcon")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Image("IG")
                        .resizable()
                        .frame(width: 55, height: 55)
                    
                    Image("X")
                        .resizable()
                        .frame(width: 45, height: 45)
                    
                    Image("Facebook")
                        .resizable()
                        .frame(width: 55, height: 55)
                }
                .foregroundColor(.white)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
