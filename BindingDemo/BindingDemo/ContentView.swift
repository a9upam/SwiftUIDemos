//
//  ContentView.swift
//  BindingDemo
//
//  Created by Anupam G on 23/05/22.
//

import SwiftUI

struct ContentView: View {
    
    let list = Dish.getAllDish()
    
    @State private var isSpicy = false
    var body: some View {
        List{
            
            Toggle(isOn: $isSpicy) {
                Text("Spicy")
                    .font(.title)
            }
            ForEach(list.filter{ $0.isSpicy == self.isSpicy}){ dish in
                HStack{
                    Image(dish.imageURL)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                    Text(dish.name)
                        .font(.title)
                        .lineLimit(nil)
                    Spacer()
                    if dish.isSpicy{
                        Image("spicy-icon")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                    
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
