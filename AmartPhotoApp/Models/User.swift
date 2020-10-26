//
//  User.swift
//  AmartPhotoApp
//
//  Created by Kaden Hendrickson on 10/5/20.
//

import SwiftUI

struct User: Hashable, Codable, Identifiable {
    var id: Int
    var firstName: String
    var lastName: String
    var email: String
    var brokerage: String
    var phoneNumber: String
    var role: Role
    var transactions: [Transaction]
    fileprivate var imageName: String
    fileprivate var brokerImageName: String
    
    enum Role: String, CaseIterable, Codable, Hashable {
        case client = "Client"
        case admin = "Administrator"
    }
}

extension User {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
    var brokerImage: Image {
        ImageStore.shared.image(name: brokerImageName)
    }
}
