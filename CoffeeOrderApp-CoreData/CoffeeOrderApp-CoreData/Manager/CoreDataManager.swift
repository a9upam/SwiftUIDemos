//
//  CoreDataManager.swift
//  CoffeeOrderApp-CoreData
//
//  Created by Anupam G on 03/06/22.
//

import Foundation
import CoreData
class CoreDataManager {
    
    static let shared = CoreDataManager(moc: NSManagedObjectContext.current)
    
    private let moc : NSManagedObjectContext
    
    init(moc : NSManagedObjectContext){
        self.moc = moc
    }
    
    public func save(name : String,type : String){
        let order = Order(context: moc)
        order.name = name
        order.type = type
        do {
            try moc.save()
        }catch {
            print(error.localizedDescription)
        }
    }
    
    func getAllOrder() ->[Order]{
        var orders = [Order]()
        let request = Order.fetchRequest()
        do {
            orders = try moc.fetch(request)
        }catch{
            print(error.localizedDescription)
        }
        return orders
    }
    
   
    private func fetchAllOrder(name : String) ->Order?{
        var orders = [Order]()
        let fetchRequest = Order.fetchRequest()
        fetchRequest.predicate  = NSPredicate(format: "name ==%@", name)
        do {
             orders = try moc.fetch(fetchRequest)
        } catch  {
            print(error.localizedDescription)
        }
        return orders.first
    }
    
    public func deleteOrder(name: String){
        if let order = fetchAllOrder(name: name){
            moc.delete(order)
            do {
                try moc.save()
            }catch{
                print(error.localizedDescription)
            }
        }
    }
    
}
