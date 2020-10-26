//
//  Home.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/4/20.
//

import SwiftUI

struct Home: View {
    @State var showProfile: Bool = false
    @State var title: String  = ""
    var body: some View {
        NavigationView {
        TabView {
                TransactionList(transactions: transactionData)
                    
                    .onAppear(perform: {
                        self.title = "Projects"
                       
                    })
                    .tabItem( {
                        Image(systemName: "paperplane")
                        Text("Projects")
                        })
            
   
                UserProfile()
                    .onAppear(perform: {
                        self.title = "Kaden Hendrickson"
                    })
                    .tabItem( { VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                    })
        }
        .navigationTitle(self.title)
        .navigationBarItems(trailing: NavigationLink(
                                        destination: CreateTransaction()){
                                            Image(systemName: "plus")
                                                .font(.system(size:30))

    })
    }
//        .navigationBarItems(trailing: NavigationLink(
//                                destination: CreateTransaction()){
//                                    Image(systemName: "plus")
//                                        .font(.system(size:30))
//
//        })
}
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
