//
//  ContentView.swift
//  SelectionsInCombine
//
//  Created by Anupam G on 20/06/22.
//

import SwiftUI

struct ContentView: View {
    private let groceries = GroceryCategory.all()
    var body: some View {
        List{
            ForEach(groceries,id:\.title){gc in
                
                Section(header: Text(gc.title)) {
                    ForEach(gc.groceryItems, id:\.title){gi in
                        
                        Text(gi.title)
                    }
                }
            }
        }.listStyle(.grouped)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//List(groceries,id:\.title) {gc in
//    Section(header: Text(gc.title)) {
//        ForEach(gc.groceryItems,id:\.title){ item in
//            Text(item.title)
//        }
//    }
//    .listStyle(.grouped)
//}
