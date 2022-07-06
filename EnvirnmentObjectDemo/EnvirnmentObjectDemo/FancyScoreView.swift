//
//  FancyScoreView.swift
//  EnvirnmentObjectDemo
//
//  Created by Anupam G on 24/05/22.
//

import SwiftUI

struct FancyScoreView: View {
    
    @EnvironmentObject var userSetting : UserSettings
    
    var body: some View {
        
        VStack{
            Text(self.userSetting.score.description)
            Button("Increment"){
                self.userSetting.score += 1
            }.background(Color.green)
                .padding()
        }
        .padding().background(Color.orange)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView()
    }
}

