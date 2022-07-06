//
//  AddCoffeeOrderViewModel.swift
//  CoffeeOrderingApp
//
//  Created by Anupam G on 25/05/22.
//

import Foundation
class AddCoffeeOrderViewModel: ObservableObject{
    
    private var webService : WebService
    
    
    var name : String =  ""
    @Published var size : String = "Medium"
    @Published var coffeeName: String = ""
    
    init() {
        webService = WebService()
    }
    
    var coffeeList : [CoffeeViewModel]{
//        return Coffee.getAll().map(CoffeeViewModel.init)
        Coffee.getAll().map{CoffeeViewModel(coffee: $0)}
    }
    
    
    private func calculatePrize() -> Double{
        let coffeeViewModel = coffeeList.first{$0.name == coffeeName}
        if let coffeeViewModel = coffeeViewModel {
            return coffeeViewModel.price * priceForSize()
        }else{
            return 0.0
        }
    }
    
    private func priceForSize()->Double{
        let prices = ["Small" : 2.0,"Medium" : 4.0,"Large" : 8.0]
        return prices[size] ?? 0.0
    }
    
    
    var total : Double{
        calculatePrize()
    }
    
    func placeOrder(){
        let order = Order(name: self.name, coffeeName: self.coffeeName, total: self.total, size: self.size)
        self.webService.createCoffeeOrder(order:order) { response in
            
        }
    }
}
