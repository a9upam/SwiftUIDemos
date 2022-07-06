//
//  Order.swift
//  CoffeeOrderingApp
//
//  Created by Anupam G on 25/05/22.
//

import Foundation

struct Coffee : Decodable{
    
    let name : String
    let imageURL : String
//    let coffeeName : String
//    let total : Double
//    let size : String
    let price : Double
    
}

extension Coffee {
    
    static func getAll() -> [Coffee]{
        return[
            Coffee(name: "Cappuccino", imageURL: "Cappuccino",price: 2.5),
            Coffee(name: "Espresso", imageURL: "Espresso",price: 1.5),
            Coffee(name: "Regular", imageURL: "Regular",price: 1.1)
        ]
    }
}
