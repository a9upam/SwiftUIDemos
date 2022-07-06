//
//  GroceryCategory.swift
//  SelectionsInCombine
//
//  Created by Anupam G on 20/06/22.
//

import Foundation
struct GroceryCategory{
    let title : String
    let groceryItems : [GroceryItem]
}
struct GroceryItem{
    let title:String
    let price : Double
}


extension GroceryCategory{
    static func all()->[GroceryCategory]{
        [GroceryCategory(title: "HEB", groceryItems: [GroceryItem(title: "Milk", price: 4.4),GroceryItem(title: "Cookies", price: 5.0)]),
        GroceryCategory(title: "Fiesta", groceryItems: [GroceryItem(title: "Fish", price: 40.4),GroceryItem(title: "Juice", price: 25.0)])]

        
    }
}
