//
//  Transaction.swift
//  Amart
//
//  Created by Kaden Hendrickson on 9/30/20.
//

import SwiftUI


struct Transaction: Hashable, Codable, Identifiable {
    var id: Int
    var status: Status
    var address: String
    var city: String
    var state: String
    var zip: String
    var sqFeet: String
    var dateOne: String
    var timeOne: TimeOfDay
    var dateTwo: String
    var timeTwo: TimeOfDay
    var notes: String
    var isVacant: Bool
    var homeOwnerPhone: String
    
    enum Status: String, CaseIterable, Codable, Hashable {
        case pending = "Pending"
        case approved = "Approved"
        case completed = "Completed"
    }
    enum TimeOfDay: String, CaseIterable, Codable, Hashable {
        case morning = "Morning"
        case afternoon = "Afternoon"
        case any = "Any"
    }
    
}

