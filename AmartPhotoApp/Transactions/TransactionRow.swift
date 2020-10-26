//
//  TransactionRow.swift
//  Amart
//
//  Created by Kaden Hendrickson on 9/30/20.
//

import SwiftUI

struct TransactionRow: View {
    var transaction: Transaction
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(transaction.address)
                    //.minimumScaleFactor(0.5)
                Text(transaction.city)
                    .foregroundColor(.gray)
                
            }
            Spacer()
            Text("Status: \(transaction.status.rawValue)")
        }
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow(transaction: transactionData[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
