//
//  OrderViewModel.swift
//  CoffeeOrderingApp
//
//  Created by Anupam G on 25/05/22.
//

import Foundation

class OrderListViewModel : ObservableObject{
    
    
   @Published var orders = [OrderViewModel]()
    
    init(){
//        createNewOrder()
        fetchOrders()
    }
    
    func fetchOrders(){
        WebService().getAllOrders { orders in
            if let orders = orders {
                self.orders = orders.map{OrderViewModel.init(order: $0)}
            }
        }
    }
    
    func createNewOrder(){
        let newOrder = Order(name: "Anupam", coffeeName: "Cappuccino", total: 10.0, size: "Medium")
        
        WebService().createCoffeeOrder(order: newOrder) { response in
            print(response?.success)
        }
    }
    
}

class OrderViewModel : ObservableObject{
    
    let id = UUID()
    
    var order : Order
    
    init(order : Order){
        self.order = order
    }
    
    var name : String{
        self.order.name
    }
    
    var size : String{
        self.order.size
    }
    
    var coffeeName : String{
        self.order.coffeeName
    }
    
    var total : Double{
        self.order.total
    }
}
