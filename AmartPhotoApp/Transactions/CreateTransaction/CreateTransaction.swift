//
//  CreateTransaction.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/5/20.
//

import SwiftUI

struct CreateTransaction: View {

    var body: some View {
        VStack(spacing: -10) {
            AddressField()
            CityField()
            StateZipField()
            SquareFeetField()
            VacancyField()
            DatePickerField()
            Spacer()
            
            NavigationLink(destination: CreateTransaction2()) {
                HStack {
                    Text("Continue")
                    
                    Image(systemName: "arrow.right")
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(70)
                .padding(.horizontal, 20)
                .offset(y: -10)
            }
            
            
            
        }
        //.padding()
        .navigationBarTitle("New Project")
    }
}

struct CreateTransaction_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        CreateTransaction()
        }
    }
}

