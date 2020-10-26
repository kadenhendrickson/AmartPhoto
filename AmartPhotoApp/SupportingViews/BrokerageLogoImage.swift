//
//  BrokerageLogoImage.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/8/20.
//

import SwiftUI

struct BrokerageLogoImage: View {
    var image: Image
    var body: some View {
       image
        .resizable()
        .aspectRatio(contentMode: .fit)
        //.clipShape(Rectangle())
        .frame(width: 75, height: 75)
    }
}

struct BrokerageLogoImage_Previews: PreviewProvider {
    static var previews: some View {
        BrokerageLogoImage(image: Image("logoImage"))
    }
}
