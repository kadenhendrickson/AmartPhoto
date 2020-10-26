//
//  AddressField.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/5/20.
//

import SwiftUI

struct AddressField: View {
    @State var address: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Address: ")
            TextField("Ex. 546 S 290 E", text: $address)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
    }
}

struct AddressField_Previews: PreviewProvider {
    static var previews: some View {
        AddressField()
    }
}
