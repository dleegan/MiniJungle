//
//  PlantView.swift
//  MiniJungle
//
//  Created by dleegan on 06/04/2025.
//

import SwiftUI

struct PlantView: View {
    @Environment(\.managedObjectContext) var context
    @FetchRequest(sortDescriptors: []) var plants: FetchedResults<Plant>

    var body: some View {
        NavigationStack {
            List {
                if plants.isEmpty {
                    ContentUnavailableView {
                        Label("Mes Plantes", systemImage: "calendar")
                    } description: {
                        Text("Vous n'avez pas encore enregistré de plantes.")
                    }
                } else {
                    ForEach(plants, id: \.self) { plant in
                        NavigationLink {
                            Text(plant.name ?? "default value")
                        } label: {
                            Text(plant.name ?? "default value")
                        }
                    }
                }
            }
            .navigationTitle("Mes Plantes")
        }
    }
}

#Preview {
    PlantView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
