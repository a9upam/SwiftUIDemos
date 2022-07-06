//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Anupam G on 18/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment : .center){
            Image("costa-rica")
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .cornerRadius(50)
//                .padding(.all)
            
                .clipShape(Circle())
            
            Text("First Line")
                .font(.largeTitle)
                .foregroundColor(.green)
            
            Text("Second line")
                .font(.title)
                .foregroundColor(.orange)
            
            HStack{
                Text("Left Side")
                Text("RightSide")
                    .padding(.all)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
