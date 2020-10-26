//
//  AddonCell.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/7/20.
//

import SwiftUI

struct AddOnCell: View {
    var addOn: AddOn
    var body: some View {

        VStack {
            Text(addOn.title)
                .font(.title3)
                .fontWeight(.semibold)
            Text(addOn.description)
                .font(.caption)
                .padding()
        }
        
    }
}

struct AddOnCell_Previews: PreviewProvider {
    static var previews: some View {
        AddOnCell(addOn: addOnList[0])
    }
}
