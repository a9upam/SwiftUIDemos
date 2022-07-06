//
//  OpenAsModel.swift
//  FlagOfTheWorld
//
//  Created by Anupam G on 02/06/22.
//

import SwiftUI

struct OpenAsModel: View {
    
    @State private var showModel: Bool = false
    let flags =  ["🏳️", "🏴‍☠️", "🏴","🇦🇫","🇦🇬","🇧🇷","🇦🇹","🇨🇻","🇮🇨"]
    @State private var selectedFlag : String = ""
    var body: some View {
        
        List{
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
            Text(selectedFlag)
                .font(.custom("Arial", size: 300))
        }
    }
}

struct OpenAsModel_Previews: PreviewProvider {
    static var previews: some View {
        OpenAsModel()
    }
}
