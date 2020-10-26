//
//  PackageCell.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/7/20.
//

import SwiftUI

struct PackageCell: View {
    @State var package: Package
    
    var body: some View {
        VStack {
            Text(package.title)
                .font(.title3)
                .fontWeight(.semibold)
            Text(package.description)
                .font(.caption)
                .padding()
        }
    }
}
    
struct PackageCell_Previews: PreviewProvider {
    static var previews: some View {
        PackageCell(package: packageList[0])
    }
}
