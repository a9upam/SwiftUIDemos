//
//  NSManagedObject+Extension.swift
//  HotCoffeeApp
//
//  Created by Anupam G on 03/06/22.
//

import Foundation
import UIKit
import CoreData
extension NSManagedObjectContext{
    static var current : NSManagedObjectContext{
        let p = PersistenceController.shared
        return p.container.viewContext
    }
}
