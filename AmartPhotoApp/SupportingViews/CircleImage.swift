//
//  CircleImage.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/2/20.
import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .frame(width: 150, height: 150)

    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("profilePicture"))
    }
}
