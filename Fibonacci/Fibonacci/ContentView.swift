//
//  ContentView.swift
//  Fibonacci
//
//  Created by Anupam G on 26/05/22.
//

import SwiftUI

struct ContentView: View {
   
    
    var body: some View {
        @State var num1 = 0
        @State var num2 = 1
        
        List{
            ForEach(0..<100){number in
                
                Text(returnNumber(number: 10).description)
            }
            
        }
    }
}

private func returnNumber(number :Int) -> Int{
    for number in 0...100{
        return number
    }
    return 0
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
