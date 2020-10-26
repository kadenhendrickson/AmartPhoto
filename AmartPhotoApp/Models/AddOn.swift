//
//  Addon.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/7/20.
//

import Foundation

struct AddOn: Identifiable {
    var id: Int
    var title: String
    var description: String
}

let addOnList = [AddOn(id: 1, title: "Twilight Photos", description: "Images taken from during sunset!"),
                AddOn(id: 2, title: "Local footage", description: "Photos and video of surrounding area for context")]
