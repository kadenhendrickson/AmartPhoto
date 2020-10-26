//
//  TabBarView.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/2/20.
//

import SwiftUI

struct TabBarView: View {
    @State var title: String = ""
    @State var user = userData
    var body: some View {
        TabView {
                TransactionList(transactions: transactionData)
                    .onAppear(perform: {self.title = "Projects"})
                    .tabItem( { VStack {
                        Image(systemName: "paperplane")
                        Text("Projects")
                        }
                    })
                UserProfile()
                    .onAppear(perform: {self.title = "\(user.firstName) \(user.lastName)"})
                    .tabItem( { VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                    })
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
