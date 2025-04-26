//
//  Plant+CoreDataClass.swift
//  MiniJungle
//
//  Created by dleegan on 06/04/2025.
//
//

import CoreData
import Foundation

@objc(Plant)
public class Plant: NSManagedObject {
    static let preview: Plant = {
        let plant = Plant(context: PersistenceController.preview.container.viewContext)
        plant.name = "Plant 1"
        return plant
    }()
}
