//
//  EnvirnmentObjectDemoApp.swift
//  EnvirnmentObjectDemo
//
//  Created by Anupam G on 24/05/22.
//

import SwiftUI

@main
struct EnvirnmentObjectDemoApp: App {
    var body: some Scene {
        WindowGroup {
            let userSetting = UserSettings()
            ContentView().environmentObject(userSetting)
        }
    }
}
