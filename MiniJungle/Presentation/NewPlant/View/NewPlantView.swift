//
//  NewPlantView.swift
//  MiniJungle
//
//  Created by dleegan on 06/04/2025.
//

import SwiftUI

struct NewPlantView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
    }
}

#Preview {
    NewPlantView()
        .environment(
            \.managedObjectContext,
            PersistenceController.preview.container.viewContext
        )
}
