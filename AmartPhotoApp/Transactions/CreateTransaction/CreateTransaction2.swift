//
//  CreateTransaction2.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/6/20.
//

import SwiftUI

struct CreateTransaction2: View {
    
    @State var packages = packageList
    @State var addOns = addOnList
    @State var notes = "Write down any other info you'd like us to know!"
    
    var body: some View {
        
        VStack() {
            VStack(alignment: .leading) {
                Text("Pick a package: ")
                PackageCollectionView(packages: packages)
            }.padding()
            VStack(alignment: .leading) {
                Text("Pick AddOns: ")
                AddOnCollectionView(addOns: addOns)
            }.padding()
            VStack(alignment: .leading)  {
                Text("Notes: ")
                    
                TextEditor(text: $notes)
                    .background(Color.gray)
            }.padding()
            //Spacer()
            
            Button(action: {}) {
                HStack {
                    Text("Submit")
                    
                    Image(systemName: "arrow.right")
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(70)
                .padding(.horizontal, 20)
                .offset(y: -20)
            }
            
            .navigationTitle("New Project")

        }
        
    }
}

struct CreateTransaction2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        CreateTransaction2()
        }
    }
}
