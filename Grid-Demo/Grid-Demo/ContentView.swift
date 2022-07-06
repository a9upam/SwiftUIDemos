//
//  ContentView.swift
//  Grid-Demo
//
//  Created by Anupam G on 20/05/22.
//

import SwiftUI

struct ContentView: View {
    let dishes = Dish.all()
    
    let columns : [GridItem] = [
        GridItem(.fixed(200))]
    
    var body: some View {
        return List {
            let chunkedDishes = dishes.chunked(into: 3)
            ForEach(0..<chunkedDishes.count){ index in

                LazyVGrid(columns: columns) {
                    //
                    ForEach(chunkedDishes[index]){ dish in
                        Image(dish.imageURL)
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
        }
    }
}

struct ContentView1: View {
    let dishes = Dish.all()
    
    let columns : [GridItem] = [
        GridItem(.fixed(200)),
        GridItem(.fixed(100))
//        ,
//        GridItem(.fixed(200))
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    
                    ForEach(dishes){ dish in
                        Image(dish.imageURL)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .navigationTitle("Anupam")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Array{
    func chunked(into size: Int)->[[Element]]{
        stride(from: 0, through: count, by: size).map{
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}


/*
 ForEach(0..<500){ index in
     HStack{
         ForEach(0..<1){ index in
             Image("a1")
                 .resizable()
                 .scaledToFit()
         }
     }
 }
 */
