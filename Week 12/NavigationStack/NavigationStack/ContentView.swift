//
//  ContentView.swift
//  NavigationStack
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

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
                    .presentationDetents([.height(300), .large])
                    .font(.headline)
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
