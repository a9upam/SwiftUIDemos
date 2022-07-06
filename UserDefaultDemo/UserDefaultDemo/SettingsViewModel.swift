//
//  SettingsViewModel.swift
//  UserDefaultDemo
//
//  Created by Anupam G on 20/06/22.
//

import Foundation
import SwiftUI

class SettingsViewModel : ObservableObject{
    @Published var isOn : Bool = UserDefaults.standard.bool(forKey: "isOn"){
        didSet{
            UserDefaults.standard.set(self.isOn, forKey: "isOn")
        }
    }
    
    
    
    
}
