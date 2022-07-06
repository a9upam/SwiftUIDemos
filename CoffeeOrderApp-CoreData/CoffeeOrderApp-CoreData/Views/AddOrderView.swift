//
//  AddOrderView.swift
//  CoffeeOrderApp-CoreData
//
//  Created by Anupam G on 03/06/22.
//

import SwiftUI

struct AddOrderView: View {
    @State var addOrderViewModel = AddOrderViewModel()
    @Binding var presented : Bool
    var body: some View {
        NavigationView{
            VStack{
                TextField("Enter Name", text: $addOrderViewModel.name)
                    .padding(15)
                    .fixedSize()
                Picker(selection: $addOrderViewModel.type, label: Text(""), content: {
                    Text("Expresso").tag("exp")
                    Text("Regular").tag("reg")
                    Text("Cappicuino").tag("cap")
                })
                    .pickerStyle(SegmentedPickerStyle())
                Button("Place Order"){
                    self.addOrderViewModel.saveOrder()
                    self.presented = false
                }
                .padding(10)
                .foregroundColor(.white)
                .background(Color.green)
            }.padding(15)
                .navigationBarTitle("Add Order")
        }
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView(presented: .constant(false))
    }
}
