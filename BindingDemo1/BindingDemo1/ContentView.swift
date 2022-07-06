//
//  ContentView.swift
//  BindingDemo1
//
//  Created by Anupam G on 23/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var name : String = ""
    
    private func printName(){
        print(self.name)
    }
    var body: some View {
        VStack{
            Text(name)
            TextField("Enter Text", text: $name)
                .padding(12)
            
            Button(action: printName) {
                Text("Show Name Value")
            }
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
