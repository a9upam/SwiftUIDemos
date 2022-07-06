//
//  ContentView.swift
//  FlagOfTheWorld
//
//  Created by Anupam G on 02/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showModel: Bool = false
    let flags =  ["🏳️", "🏴‍☠️", "🏴","🇦🇫","🇦🇬","🇧🇷","🇦🇹","🇨🇻","🇮🇨"]
    @State private var selectedFlag : String = ""
    @State private var country = ""
    var body: some View {
        
        List{
            
            Text(self.country)
            ForEach(0..<flags.count){ index in
                HStack{
                    Text(flags[index])
                        .font(.custom("Arial", size: 100))
                    Text("flag number \(index)")
                        .font(.largeTitle)
                }.onTapGesture {
                    self.showModel.toggle()
                    self.selectedFlag = flags[index]
                }
            }
        }
        .sheet(isPresented: $showModel) {
            FlagDetailView(flag: selectedFlag,country:self.$country,showModel:$showModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/* Display as a model
Button("Show Model"){
    showModel.toggle()
}
.sheet(isPresented: $showModel) {
    Text("I am a model")
}
 */
