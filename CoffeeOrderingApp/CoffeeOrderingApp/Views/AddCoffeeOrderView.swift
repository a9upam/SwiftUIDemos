//
//  AddCoffeeOrderView.swift
//  CoffeeOrderingApp
//
//  Created by Anupam G on 26/05/22.
//

import SwiftUI
import Combine

struct AddCoffeeOrderView: View {
    
    @ObservedObject private var addCoffeeOrderViewModel = AddCoffeeOrderViewModel()
    @Binding var isPresented : Bool
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section(header: Text("INFORMAION").font(.body)) {
                        TextField("Enter your name", text: $addCoffeeOrderViewModel.name)
                        Section(header: Text("Select Coffee ").font(.body)) {
                            ForEach(addCoffeeOrderViewModel.coffeeList,id:\.name){ coffee in
                                CoffeeCellView(coffee: coffee, selection: $addCoffeeOrderViewModel.coffeeName)
                            }
                        }
                        Section(header: Text("Select Coffee").font(.body), footer: OrderTotalView(total: self.addCoffeeOrderViewModel.total))
                        {
                            Picker("Select size",selection: self.$addCoffeeOrderViewModel.size){
                                Text("Small").tag("Small")
                                Text("Medium").tag("Medium")
                                Text("Large").tag("Large")
                            }.pickerStyle(SegmentedPickerStyle())
                        }
                    }
                }
                HStack{
                    Button("Place Order"){
                        self.addCoffeeOrderViewModel.placeOrder()
                        self.isPresented = false
                    }
                    .padding(EdgeInsets(top: 12, leading: 100, bottom: 12, trailing: 100))
                    .foregroundColor(Color.white)
                    .background(Color( red: 46/255, green: 204/255, blue: 113/255))
                    .cornerRadius(10)
                }
            }
            .navigationTitle("Add Order")
        }
    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView(isPresented: .constant(false))
    }
}

struct CoffeeCellView: View {
    
    var coffee : CoffeeViewModel
    
    @Binding var selection : String
    var body: some View {
        HStack{
            Image(coffee.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .clipped()
            Text(coffee.name)
                .font(.title)
                .padding([.leading],20)
            Spacer()
            Image(systemName: self.selection == self.coffee.name ? "checkmark" : "" )
        }.onTapGesture {
            self.selection = self.coffee.name
        }
    }
}
