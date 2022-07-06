//
//  AddOrderView.swift
//  HotCoffeeApp
//
//  Created by Anupam G on 03/06/22.
//

import SwiftUI

struct AddOrderView: View {
    
    @State var addOrderViewModel  = AddOrderViewModel()
    @Binding var showModel : Bool
    var body: some View {
        NavigationView{
            Group{
                VStack{
                    TextField("Enter Name", text: $addOrderViewModel.name)
                    Picker(selection: $addOrderViewModel.type, label: Text("")) {
                        Text("Cappuccino").tag("cap")
                        Text("Expresso").tag("exp")
                        Text("Regular").tag("reg")
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Button("Place Order"){
                        self.addOrderViewModel.saveOrder()
                        self.showModel = false
                    }.padding(8)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }.padding(8)
            }
            .navigationTitle("Add Order")
        }
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView(showModel: .constant(false))
    }
}
