//
//  DishModel.swift
//  XCode-Previews
//
//  Created by Anupam G on 27/05/22.
//

import Foundation

struct Dish:Hashable  {
    let name : String
    let price : Double
    let imageURL : String
}

extension Dish{
    
    static func allDish() ->[Dish]{
        return [
            Dish(name: "Daal", price: 120, imageURL: "e1"),
            Dish(name: "Chawal", price: 110, imageURL: "e2"),
            Dish(name: "Roti", price: 10, imageURL: "a1"),
            Dish(name: "Salad", price: 140, imageURL: "d1"),
            Dish(name: "Sabji", price: 160, imageURL: "d2")
        ]
    }
}
