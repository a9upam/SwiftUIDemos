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
    
    
    
    @State private var flagViewModel : FlagViewModel = FlagViewModel()
    var body: some View {
        
        List{
            
            Text(self.flagViewModel.country)
            ForEach(flags,id:\.self){ flag in
                HStack{
                    Text(flag)
                        .font(.custom("Arial", size: 100))
                    Spacer()
//                    Text(flagViewModel.country)
                }
                .onTapGesture {
                    flagViewModel.showModel.toggle()
                    self.flagViewModel.flag = flag
                }
            }
        }
        .sheet(isPresented: $flagViewModel.showModel) {
            FlagDetailView(flagViewModel: $flagViewModel)
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
