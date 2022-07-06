//
//  OrderTotalView.swift
//  CoffeeOrderingApp
//
//  Created by Anupam G on 27/05/22.
//

import SwiftUI

struct OrderTotalView: View {
    let total : Double
    var body: some View {
        
        HStack(alignment: .center){
            Spacer()
            Text(String(format: "%.2f $", total))
                .font(.title)
                .foregroundColor(Color.green)
         Spacer()
        }
    }
}

struct OrderTotalView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTotalView(total: 45.67)
    }
}
