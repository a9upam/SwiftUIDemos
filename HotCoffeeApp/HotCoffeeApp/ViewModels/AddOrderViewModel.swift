//
//  AddOrderViewModel.swift
//  HotCoffeeApp
//
//  Created by Anupam G on 03/06/22.
//

import Foundation

class AddOrderViewModel{
    var name : String  = ""
    var type : String =  ""
    
    public func saveOrder(){
        CoreDataManager.shared.saveOrder(name: name, type: type)
    }
}
