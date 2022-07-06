//
//  MoviesAppApp.swift
//  MoviesApp
//
//  Created by Anupam G on 20/05/22.
//

import SwiftUI

@main
struct MoviesAppApp: App {
    @StateObject var store = MovieStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
