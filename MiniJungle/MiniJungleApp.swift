//
//  MiniJungleApp.swift
//  MiniJungle
//
//  Created by dleegan on 06/04/2025.
//

import SwiftUI

@main
struct MiniJungleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
