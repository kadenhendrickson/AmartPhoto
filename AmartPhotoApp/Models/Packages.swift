//
//  Packages.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/7/20.
//

import SwiftUI

struct Package: Identifiable {
    var id: Int
    var title: String
    var description: String
}

let packageList = [Package(id: 1, title: "Photo Package", description: "This package includes 20 still images of your home, including interior and exterior"),
                   Package(id: 2, title: "Video Package", description: "This package contains still images as well as a professional video of your property, ground and aerial video included.")]
