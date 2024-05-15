//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Hoon on 5/15/24.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext

    @Query() var users: [User]

    var body: some View {
        VStack {
            List {
                ForEach(users) { user in
                    VStack(alignment: .leading) {
                        Text(user.name)
                        Text(user.email)
                        Text("\(user.updatedAt)")
                    }
                }
            }
        }
    }
}

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: User.self, configurations: config)

    var currentTime: Date = .init()

    for i in 1 ..< 10 {
        currentTime = currentTime.addingTimeInterval(1)
        let user = User(
            name: "User \(i)",
            email: "user\(i)@example.com",
            createdAt: .init(),
//            updatedAt: .init
//            createdAt: .init,
            updatedAt: currentTime
//            updatedAt: .init
        )
        container.mainContext.insert(user)
    }

    return ContentView()
        .modelContainer(container)
}
