//
//  CityField.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/6/20.
//

import SwiftUI

struct CityField: View {
    @State var city: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("City: ")
            TextField("Ex. Salt Lake City", text: $city)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
    }
}

struct CityField_Previews: PreviewProvider {
    static var previews: some View {
        CityField()
    }
}
