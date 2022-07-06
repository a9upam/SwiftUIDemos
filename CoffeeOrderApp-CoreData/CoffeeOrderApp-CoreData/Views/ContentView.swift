//
//  ContentView.swift
//  CoffeeOrderApp-CoreData
//
//  Created by Anupam G on 03/06/22.
//

import SwiftUI
import CoreData
import Combine

struct ContentView: View {
    
    @ObservedObject var orderListVM = OrderListViewModel()
    @State var presented : Bool = false
    var body: some View{
        NavigationView{
            List{
                ForEach(orderListVM.orders,id:\.name){ order in
                    HStack{
                        Image(order.type)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                        
                        Text(order.name)
                            .font(.largeTitle)
                            .padding([.leading],10)
                            .lineLimit(nil)
                    }
                }
                .onDelete(perform: delete)
            }
            .navigationBarTitle("Orders")
            .navigationBarItems(trailing: Button("Add Order"){
                presented = true
            })
        }
        .sheet(isPresented: $presented) {
            orderListVM.fetchAllOrder()
        } content: {
            AddOrderView(presented: $presented)
        }
        
    }
    private func delete(at offset : IndexSet){
        offset.forEach { index in
            let orderVM = orderListVM.orders[index]
            orderListVM.deleteOrder(order: orderVM)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
