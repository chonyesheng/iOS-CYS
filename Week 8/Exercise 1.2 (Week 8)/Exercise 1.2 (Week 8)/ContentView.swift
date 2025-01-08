//
//  ContentView.swift
//  Exercise 1.2 (Week 8)
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ContentView: View{
    var body: some View {
        VStack {
            Text("KUALA LUMPUR")
            Image(systemName: "moon.stars")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("28C")
                .font(.largeTitle)
            Spacer()
            
            
            HStack{
                VStack{
                    Text("MON")
                    Image(systemName: "moon.stars")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("33C")
                        .font(.title3)
                }
                VStack{
                    Text("TUE")
                    Image(systemName: "moon.stars")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("33C")
                        .font(.title3)
                }
                VStack{
                    Text("WED")
                    Image(systemName: "moon.stars")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("33C")
                        .font(.title3)
                }
                VStack{
                    Text("THU")
                    Image(systemName: "moon.stars")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("33C")
                        .font(.title3)
                }
                VStack{
                    Text("FRI")
                    Image(systemName: "moon.stars")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("33C")
                        .font(.title3)
                }
                VStack{
                    Text("SAT")
                    Image(systemName: "moon.stars")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("33C")
                        .font(.title3)
                }
                VStack{
                    Text("SUN")
                    Image(systemName: "moon.stars")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("33C")
                        .font(.title3)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
