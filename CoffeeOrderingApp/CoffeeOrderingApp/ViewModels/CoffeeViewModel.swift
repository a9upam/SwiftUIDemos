//
//  CoffeeViewModel.swift
//  CoffeeOrderingApp
//
//  Created by Anupam G on 26/05/22.
//

import Foundation
class CoffeeListViewModel : ObservableObject{
    
    var coffeeList:[CoffeeViewModel] = [CoffeeViewModel]()
}

class CoffeeViewModel : ObservableObject{
    var coffee : Coffee
    
    init(coffee:Coffee) {
        self.coffee = coffee
    }
    
    var name : String{
        coffee.name
    }
    
    var imageURL:String{
        coffee.imageURL
    }
    
    var price : Double{
        coffee.price
    }
}
