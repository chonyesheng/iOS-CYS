//
//  ArtistStruct.swift
//  Artist
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct Artist: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var description: String
    var websiteURL: String
}

