//
//  FancyTime.swift
//  ObservableObject
//
//  Created by Anupam G on 24/05/22.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer : ObservableObject{
    @Published var value : Int = 0
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { Timer in
            self.value += 1
        }
    }
}
