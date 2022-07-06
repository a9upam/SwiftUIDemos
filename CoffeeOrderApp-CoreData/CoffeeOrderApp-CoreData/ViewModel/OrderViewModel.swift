//
//  OrderViewModel.swift
//  CoffeeOrderApp-CoreData
//
//  Created by Anupam G on 03/06/22.
//

import Foundation

class OrderListViewModel : ObservableObject{
    @Published var orders = [OrderViewModel]()
    
    init(){
        fetchAllOrder()
    }
    
    public func fetchAllOrder(){
        self.orders = CoreDataManager.shared.getAllOrder().map{OrderViewModel.init(order: $0)}
    }
    
    func deleteOrder(order:OrderViewModel){
        CoreDataManager.shared.deleteOrder(name: order.name)
        fetchAllOrder()
    }
}

class OrderViewModel {
    
    var name : String = ""
    var type : String = ""
    
    init(order:Order){
        self.name = order.name!
        self.type = order.type!
    }
    
}
