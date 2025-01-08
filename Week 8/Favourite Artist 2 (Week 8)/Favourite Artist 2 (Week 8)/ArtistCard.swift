//
//  ArtistCard.swift
//  Favourite Artist 2 (Week 8)
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI
struct ArtistCard: View {
    var name: String
    var color: String
    var image: String
    var body: some View {
        VStack {
            ZStack {
                Color(color)
                    .cornerRadius(20)
                HStack {
                    Spacer()
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                }
                HStack{
                    Text(name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.all)
                    Spacer()
                    
                }
                
            }
        }.frame(height: 200)
            .padding()
                
    }
}
    
#Preview {
    ArtistCard(name: ("ROSE"), color: "ROSE", image: "ROSE")
    ArtistCard(name: ("YANGMI"), color: "YANGMI", image: "YANGMI")
    ArtistCard(name: ("GEM"), color: "GEM", image: "GEM")
    ArtistCard(name: ("ZHAO LUSI"), color: "ZHAO LUSI", image: "ZHAO LUSI")
}
