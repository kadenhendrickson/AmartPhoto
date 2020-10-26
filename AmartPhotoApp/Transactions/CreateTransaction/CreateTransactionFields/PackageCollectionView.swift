//
//  PackageDetails.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/6/20.
//

import SwiftUI

struct PackageCollectionView: View {
    @State var packages: [Package]
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack(alignment: .bottom) {
                ForEach(packageList) {
                    PackageCell(package: $0)


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

struct PackageCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PackageCollectionView(packages: packageList)
    }
}
