//
//  Message.swift
//  cisc_225_awedchat
//
//  Created by Awet Hussen on 11/30/22.
//

import Foundation
struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}

