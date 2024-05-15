//
//  User.swift
//  SwiftDataDemo
//
//  Created by Hoon on 5/15/24.
//

import SwiftData
import SwiftUI

@Model
class User {
    var id: UUID
    var name: String
    var email: String

    var createdAt: Date
    var updatedAt: Date

    init(name: String, email: String, createdAt: Date = .init(), updatedAt: Date = .init()) {
        self.id = .init()
        self.name = name
        self.email = email
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
