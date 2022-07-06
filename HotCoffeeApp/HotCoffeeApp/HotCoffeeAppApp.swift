//
//  HotCoffeeAppApp.swift
//  HotCoffeeApp
//
//  Created by Anupam G on 03/06/22.
//

import SwiftUI

@main
struct HotCoffeeAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
//            AddOrderView()
            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
