//
//  NSManagedObjectContext+Extension.swift
//  CoffeeOrderApp-CoreData
//
//  Created by Anupam G on 03/06/22.
//

import Foundation
import CoreData

extension NSManagedObjectContext{
    
    static var current : NSManagedObjectContext{
        PersistenceController.shared.container.viewContext
    }
}
