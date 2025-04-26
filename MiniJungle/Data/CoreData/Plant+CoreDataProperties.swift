//
//  Plant+CoreDataProperties.swift
//  MiniJungle
//
//  Created by dleegan on 06/04/2025.
//
//

import Foundation
import CoreData


extension Plant {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Plant> {
        return NSFetchRequest<Plant>(entityName: "Plant")
    }

    @NSManaged public var name: String?
    @NSManaged public var type: String?
    @NSManaged public var landType: String?
    @NSManaged public var price: NSDecimalNumber?
    @NSManaged public var givenBy: String?
    @NSManaged public var date: Date?
    @NSManaged public var stage: String?
    @NSManaged public var notes: String?
    @NSManaged public var image: String?

}

extension Plant : Identifiable {

}
