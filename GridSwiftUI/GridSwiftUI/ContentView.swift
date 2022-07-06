//
//  ContentView.swift
//  GridSwiftUI
//
//  Created by Anupam G on 19/05/22.
//

import SwiftUI

struct ContentView: View {
//    let animals = [["🐈","🐆"],["🦌","🦒","🦏"],["🐄","🐀"],["🦩","🦜"]]
    let animals = ["🐈","🐆","🦌","🦒","🦏","🐄","🐀","🦩","🦜"]

    @State private var slideValue : CGFloat = 1
    
    var body: some View {
        NavigationView{
            VStack{
                Slider(value: $slideValue, in : 1...8,step: 1)
                Text(String(format: "%.0f", slideValue))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .clipShape(Circle())
                List(self.animals.chunks(size: Int(self.slideValue)),id: \.self){ chunk in
                    ForEach(chunk,id:\.self) { animal in
                        Text(animal)
                            .font(.system(size: CGFloat(300/self.slideValue)))
                    }
                }
            }
            .navigationTitle("Animals")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
