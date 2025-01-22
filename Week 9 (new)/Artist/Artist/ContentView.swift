//
//  ContentView.swift
//  Artist
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedArtist: Artist? = nil
    
    var body: some View {
        NavigationView {
            List(ArtistData.artists) { artist in
                HStack {
                    
                    Image(artist.imageName)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(10)
                    
                    Text(artist.name)
                        .font(.headline)
                }
                .onTapGesture {
                    
                    selectedArtist = artist
                }
            }
            .navigationTitle("Favorite Artists")
            .sheet(item: $selectedArtist) { artist in
                
                ArtistDetailView(artist: artist)
                    .frame(height: 300)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
