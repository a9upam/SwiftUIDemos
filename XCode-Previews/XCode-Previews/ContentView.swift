//
//  ContentView.swift
//  XCode-Previews
//
//  Created by Anupam G on 27/05/22.
//

import SwiftUI

struct ContentView: View {
    
    let allDish = Dish.allDish()
    var body: some View {
        List{
            ForEach(allDish,id:\.name){ dish in
                DishCell(dish:dish)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
