//
//  Dish.swift
//  BindingDemo
//
//  Created by Anupam G on 23/05/22.
//

import Foundation
import SwiftUI

struct Dish : Identifiable{
    
    let id = UUID()
    let name : String
    let imageURL : String
    let isSpicy : Bool
    
}

extension Dish {
    
    static func getAllDish()->[Dish]{
        return [
            Dish(name: "Dal", imageURL: "kungpow", isSpicy: true),
            Dish(name: "Sweet & Sour", imageURL: "sweet", isSpicy: false),
            Dish(name: "Spicy", imageURL: "spicy", isSpicy: true)
        ]
    }
}
