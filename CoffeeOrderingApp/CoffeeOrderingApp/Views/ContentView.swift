//
//  ContentView.swift
//  CoffeeOrderingApp
//
//  Created by Anupam G on 25/05/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject private var orderListViewModel = OrderListViewModel()
    @State private var showModel : Bool = false
    var body: some View {
        NavigationView{
            
            OrderListView(orders: self.orderListViewModel.orders)
                .navigationBarTitle("Coffee Orders")
                .navigationBarItems(leading: Button(action: reloadOrders){
                    Image(systemName: "arrow.clockwise")
                        .foregroundColor(Color.black)
                }, trailing: Button(action: showAddCoffeeOrderView){
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                })
                .sheet(isPresented: self.$showModel, onDismiss: reloadOrders) {
                    AddCoffeeOrderView(isPresented: self.$showModel)
                }
            
        }
    }
    
    private func reloadOrders(){
        self.orderListViewModel.fetchOrders()
    }
    
    private func showAddCoffeeOrderView(){
        self.showModel = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
