//
//  ContentView.swift
//  StateDemo
//
//  Created by Anupam G on 23/05/22.
//

import SwiftUI

struct ContentView: View {
    @State var name : String = "John"
    
    var body: some View {
        
        VStack{
            Text(name)
                .padding()

            Button(action: {
                self.name = "Mary"
            }) {
                Text("Change Bitton")
            }

        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
