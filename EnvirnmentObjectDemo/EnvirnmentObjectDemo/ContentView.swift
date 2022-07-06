//
//  ContentView.swift
//  EnvirnmentObjectDemo
//
//  Created by Anupam G on 24/05/22.
//

import SwiftUI

struct ContentView: View {
//    @ObservedObject var userSetting = UserSettings()
    
    @EnvironmentObject var userSetting : UserSettings

    var body: some View {
        VStack{
            Text("Current Score \(userSetting.score)")
                .font(.largeTitle)
            Button("Increment Score"){
                self.userSetting.score += 1
            }
            FancyScoreView()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserSettings())
    }
}
