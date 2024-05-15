//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Hoon on 5/15/24.
//

import SwiftUI

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [User.self])
        }
    }
}
