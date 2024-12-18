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
            Spacer()
        }
        
        HStack {
            Text("ROSE")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Image("ROSE")
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
            Spacer()
        }.background(.pink)
            
            
            HStack {
                Text("YANGMI")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Image("YANGMI")
                    .resizable()
                    .scaledToFill()
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                    .cornerRadius(20)
                Spacer()
            }.background(.blue)
                
                
                
        HStack {
            Text("GEM")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Image("GEM")
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .cornerRadius(20)
            Spacer()
        }.background(.yellow)
        
        
        HStack {
            
            Text("ZHAO LUSI")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Image("ZHAO LUSI")
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .cornerRadius(20)
            Spacer()
        }.background(.red)
                }
            }
#Preview {
    ContentView()
}
