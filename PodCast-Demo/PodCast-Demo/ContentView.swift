//
//  ContentView.swift
//  PodCast-Demo
//
//  Created by Anupam G on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    let episode = Episode(name: "Macbreak Weekly", track: "WWDC")
    @State private var isPlaying : Bool = false
    var body: some View {
        VStack{
            Text(self.episode.name)
                .font(.title)
                .foregroundColor(isPlaying ? Color.green : Color.black)
            
            Text(self.episode.track)
                .font(.title2)
                .foregroundColor(Color.secondary)
            
            PlayButton(isPlaying: $isPlaying)
        }
    }
}

struct PlayButton : View{
    
    @Binding  var isPlaying : Bool
    var body: some View{
        Button(action: {
            self.isPlaying.toggle()
        
        }) {
            Text("Play")
        }
        .padding(12)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
