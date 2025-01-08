//
//  ContentView.swift
//  FavouriteArtist
//
//  Created by labuser on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "bell.badge.fill")
                            .padding(.all)
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Image(systemName: "person.fill")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                    }
                }
                .padding()
                
                
                
                HStack {
                    Text("Favourite Artist")
                        .fontWeight(.semibold)
                        .font(.largeTitle)
                        .padding()
                    Spacer()
                }
                ScrollView{
                    ArtistCard(name: ("ROSE"), color: "ROSE", image: "ROSE")
                    ArtistCard(name: ("YANGMI"), color: "YANGMI", image: "YANGMI")
                    ArtistCard(name: ("GEM"), color: "GEM", image: "GEM")
                    ArtistCard(name: ("ZHAO LUSI"), color: "ZHAO LUSI", image: "ZHAO LUSI")
                }
            }
        }
                
                
#Preview {
    ContentView()
        }
