//
//  TransactionList.swift
//  Amart
//
//  Created by Kaden Hendrickson on 9/30/20.
//

import SwiftUI

struct TransactionList: View {
    var transactions: [Transaction]
    var body: some View {
       
        List {
            ForEach(transactions) { transaction in
                NavigationLink(destination : TransactionDetail(transaction: transaction)){
                    TransactionRow(transaction: transaction)

                }
                 .padding()
            }
           
    }
       
    }
}

struct TransactionList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        TransactionList(transactions: transactionData)
            .navigationBarItems(leading: Button(action: {}){Text("b")})
        }
    }
}
