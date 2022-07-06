//
//  OrderViewModel.swift
//  HotCoffeeApp
//
//  Created by Anupam G on 03/06/22.
//

import Foundation
import SwiftUI
import CoreData
import Combine

class OrderListViewModel: ObservableObject{
    
   @Published var orders = [OrderViewModel]()
    
    init(){
        fetchAllOrders()
    }
    
    
    func fetchAllOrders(){
        self.orders = CoreDataManager.shared.getAllOrders().map{OrderViewModel.init(order: $0)}
        print(orders)
    }
    
    func deleteOrder(order:OrderViewModel){
        CoreDataManager.shared.deleteOrder(name: order.name)
        fetchAllOrders()
    }
}


class OrderViewModel:Identifiable{
    
    var name : String = ""
    var type : String = ""
    
    init(order : Order){
        self.name = order.name!
        self.type = order.type!
    }
}
