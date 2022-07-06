//
//  OrderListView.swift
//  CoffeeOrderingApp
//
//  Created by Anupam G on 25/05/22.
//

import SwiftUI

struct OrderListView: View {
    
    let orders : [OrderViewModel]
    
    
    init(orders :[OrderViewModel]){
        self.orders = orders
    }
    
    var body: some View {
        List{
            ForEach(self.orders,id:\.id){ order in
                HStack{
                    Image(order.coffeeName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(15)
                        .clipped()
                    
                    VStack(alignment:.leading){
                        Text(order.name)
                            .font(.title)
                            .padding([.leading,.bottom],10)
                            
                        
                        HStack{
                            
                            Text(order.coffeeName)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            Text(order.size)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .background(Color.purple)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orders: [OrderViewModel(order: Order(name: "Mary", coffeeName: "Regular", total: 3.0, size: "Medium"))])
    }
}
