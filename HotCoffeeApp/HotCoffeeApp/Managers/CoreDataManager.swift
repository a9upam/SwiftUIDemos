//
//  CoreDataManager.swift
//  HotCoffeeApp
//
//  Created by Anupam G on 03/06/22.
//

import CoreData
import Foundation
import SwiftUI


class CoreDataManager{


    static let shared = CoreDataManager(moc: NSManagedObjectContext.current)
    private var moc : NSManagedObjectContext
    
    private init(moc:NSManagedObjectContext){
        self.moc = moc
    }
    
    
    public func saveOrder(name : String,type:String){
        let order = Order(context: moc)
        order.name = name
        order.type = type
        do {
            try self.moc.save()
        }catch {
            print(error.localizedDescription)
        }
    }
    
    public func getAllOrders() ->[Order]{
        var orders = [Order]()
        let orderRequest : NSFetchRequest<Order> = Order.fetchRequest()
        do {
            orders = try moc.fetch(orderRequest)
        }catch{
            print(error.localizedDescription)
        }
        return orders
    }
    
    
    private func fetchOrder(name:String) ->Order?{
        var orders = [Order]()
        let request = Order.fetchRequest()
        request.predicate = NSPredicate(format: "name == %@", name)
        do {
            orders = try self.moc.fetch(request)
        }catch{
            print(error.localizedDescription)
        }
        return orders.first
    }
    
    public func deleteOrder(name : String){
        do{
            if let order = fetchOrder(name: name){
                self.moc.delete(order)
                try self.moc.save()
            }
        }catch {
            print(error.localizedDescription)
        }
    }
    
    
}
