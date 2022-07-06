//
//  ContentView.swift
//  Grapyics101
//
//  Created by Anupam G on 01/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Circle()
                .stroke(Color.green,lineWidth: 20)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
