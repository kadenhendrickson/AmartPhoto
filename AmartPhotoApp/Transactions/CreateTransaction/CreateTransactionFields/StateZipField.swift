//
//  AddressDetail.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/6/20.
//

import SwiftUI

struct StateZipField: View {
    @State var state: String = ""
    @State var zip: String = ""

    var body: some View {
        HStack() {
 
            VStack(alignment: .leading, spacing: 5) {
                Text("State:  ")
                TextField("Ex. UT", text: $state)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            VStack(alignment: .leading, spacing: 5) {
                Text("Zip code: ")
                TextField("Ex. 84032", text: $zip)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }.padding()
    }
}

struct StateZipField_Previews: PreviewProvider {
    static var previews: some View {
        StateZipField()
    }
}
