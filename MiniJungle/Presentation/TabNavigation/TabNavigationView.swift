//
//  TabNavigationView.swift
//  MiniJungle
//
//  Created by dleegan on 06/04/2025.
//

import SwiftUI

struct TabNavigationView: View {
    var body: some View {
        TabView(selection: .constant(2)) {
            ContentUnavailableView {
                Label("Home", systemImage: "house.fill")
            } description: {
                Text("Cette page arrive bientôt!")
            }
            .tabItem {
                Label("Home", systemImage: "house.fill")
            }
            .tag(1)

//            ContentUnavailableView {
//                Label("Mes plantes", systemImage: "leaf.fill")
//            } description: {
//                Text("Cette page arrive bientôt!")
//            }
            PlantView()
                .tabItem {
                    Label("Mes plantes", systemImage: "leaf.fill")
                }
                .tag(2)

            ContentUnavailableView {
                Label("Home", systemImage: "house.fill")
            } description: {
                Text("Cette page arrive bientôt!")
            }
            .tabItem {
                Label("Historique", systemImage: "calendar")
            }
            .tag(3)

            ContentUnavailableView {
                Label("Profile", systemImage: "person.fill")
            } description: {
                Text("Cette page arrive bientôt!")
            }
            .tabItem {
                Label("Profile", systemImage: "person.fill")
            }
            .tag(4)
        }
    }
}

#Preview {
    TabNavigationView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
