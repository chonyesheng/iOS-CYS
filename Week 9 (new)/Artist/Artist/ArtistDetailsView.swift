//
//  ArtistDetailsView.swift
//  Artist
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct ArtistDetailView: View {
    var artist: Artist
    
    var body: some View {
        VStack {
            Image(artist.imageName) 
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .cornerRadius(15)
                .padding()
            
            Text(artist.name)
                .font(.title)
                .padding(.top)
            
            Text(artist.description)
                .font(.body)
                .padding()
            
            Link("Show Sheet", destination: URL(string: artist.websiteURL)!)
                .foregroundColor(.blue)
                .padding(.top)
            
            Spacer()
        }
        .padding()
    }
}

struct ArtistDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistDetailView(artist: Artist(name: "Frida Kahlo", imageName: "frida", description: "Frida Kahlo was a Mexican painter...", websiteURL: "https://www.fridakahlo.org"))
    }
}
