//
//  ContentView.swift
//  MiniJungle
//
//  Created by dleegan on 06/04/2025.
//

import CoreData
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabNavigationView()
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
