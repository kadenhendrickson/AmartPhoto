//
//  UserProfileView.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/2/20.
//

import SwiftUI

struct UserProfile: View {
    var user: User = userData
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                VStack(spacing: -5) {
                    CircleImage(image: user.image)
                    Button(action: {print("Edit Image clicked!")}) {
                        Text("Edit")
                    }
                }
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack(spacing: 0) {
                        BrokerageLogoImage(image: user.brokerImage)
                        VStack(alignment: .leading) {
                            Text(user.brokerage)
                                .font(.title2)
                            Text(" Everest")
                                .font(.caption)
                        }
                    }
                    HStack {
                        Image(systemName: "paperplane")
                        Text("Projects Completed: \(completedTransactionData.count)" )
                            .font(.title3)
                    }
                }.padding()
            }//.offset(x: -25)
            
            //Spacer()
            Divider()
            VStack {
                Text("Completed Projects")
                    .font(.title2)
                TransactionList(transactions: completedTransactionData)
                
            }.offset(y: 20)
            
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        UserProfile(user: userData)
        }.navigationTitle(userData.firstName + " " + userData.lastName)
    }
}
