//
//  TransactionDetail.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/4/20.
//

import SwiftUI


struct TransactionDetail: View {
    var transaction: Transaction

    var body: some View {
        
        VStack(alignment: .leading, spacing: 25) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Location Information")
                    .font(.title2)
                
                VStack(alignment: .leading, spacing: 3) {
                    Text("Address:")
                        .foregroundColor(.gray)
                    HStack(spacing: 8) {
                        Text(transaction.address)
                        Text(transaction.city + ",")
                        Text(transaction.state)
                    }
                }
                HStack(spacing: 50) {
                    VStack(alignment: .leading, spacing: 3) {
                        Text("Square Feet:")
                            .foregroundColor(.gray)
                        Text(transaction.sqFeet)
                    }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        Text("Is the home vacant:")
                            .foregroundColor(.gray)
                        if(transaction.isVacant){
                            Text("Yes")
                        } else {
                            Text("No")
                        }
                    }

                }
                
                VStack(alignment: .leading, spacing: 3) {
                    Text("Homeowners phone number:")
                        .foregroundColor(.gray)
                    Text(transaction.homeOwnerPhone)
                }
            }
            
            VStack(alignment: .leading, spacing: 10){
                Text("Project Information")
                    .font(.title2)
                
                HStack {
                    Text("Preferred Date/Time: ")
                        .foregroundColor(.gray)
                    Text("\(transaction.dateOne), \(transaction.timeOne.rawValue) ")
                }
                HStack {
                    Text("Secondary Date/Time: ")
                        .foregroundColor(.gray)
                    Text("\(transaction.dateTwo), \(transaction.timeTwo.rawValue) ")
                }
                VStack(alignment: .leading, spacing: 3) {
                    Text("Project Details:")
                        .foregroundColor(.gray)
                }
            }
            
            VStack(alignment: .leading, spacing: 3) {
                Text("Notes: ")
                Text(transaction.notes)
            }
            .frame(maxHeight: .infinity)

        }
        .padding()
        .offset(y: -50)
    }
}

struct TransactionDetail_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetail(transaction: transactionData[1])
    }
}
