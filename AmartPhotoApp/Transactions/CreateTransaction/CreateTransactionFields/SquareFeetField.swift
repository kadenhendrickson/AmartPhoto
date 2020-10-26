//
//  SquareFeetField.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/6/20.
//

import SwiftUI

struct SquareFeetField: View {
    @State var sqFt: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Square Ft: ")
            TextField("Ex. 8,900", text: $sqFt)
                .textFieldStyle(RoundedBorderTextFieldStyle())

        }.padding()
    }
}

struct SquareFeetField_Previews: PreviewProvider {
    static var previews: some View {
        SquareFeetField()
    }
}
