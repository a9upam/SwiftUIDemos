//
//  Dish.swift
//  Grid-Demo
//
//  Created by Anupam G on 20/05/22.
//

import Foundation
import SwiftUI

struct Dish : Identifiable{
    
    let id = UUID()
    let name : String
    let price : Double
    let imageURL : String
    
}

extension Dish{
    static func all () ->[Dish]{
        return [
            Dish(name: "Palak Paneer", price: 343.3, imageURL: "a1"),
            Dish(name: "Daal Makhni", price: 243.3, imageURL: "a1"),
            Dish(name: "Sahi Paneer", price: 563.3, imageURL: "a1"),
            Dish(name: "Paneer Butter masala", price: 143.3, imageURL: "a1"),
            Dish(name: "Daal", price: 643.3, imageURL: "a1"),
            Dish(name: "Rice", price: 323.3, imageURL: "a1"),
            Dish(name: "Roti", price: 123.3, imageURL: "a1"),
            Dish(name: "Desert", price: 523.3, imageURL: "a1"),
            Dish(name: "Desert", price: 523.3, imageURL: "a1"),
            Dish(name: "Desert", price: 523.3, imageURL: "a1"),
            Dish(name: "Desert", price: 523.3, imageURL: "a1"),
            Dish(name: "Desert", price: 523.3, imageURL: "a1"),
            Dish(name: "Desert", price: 523.3, imageURL: "a1"),
            Dish(name: "Desert", price: 523.3, imageURL: "a1"),
            Dish(name: "Desert", price: 523.3, imageURL: "a1")
        ]
    }
}
