//
//  AddonCollectionView.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/7/20.
//

import SwiftUI

struct AddOnCollectionView: View {
    @State var addOns: [AddOn]
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .top) {
                ForEach(addOns) {
                    AddOnCell(addOn: $0)
                        .padding(.bottom, 0)
                        .padding(.top, 0)

                        //.background(Color.red)

                        .cornerRadius(10)
                        
                        
                        .frame(maxWidth: 250, maxHeight: 300)
                }
            }
        }
    }
}

struct AddonCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        AddOnCollectionView(addOns: addOnList)
    }
}
