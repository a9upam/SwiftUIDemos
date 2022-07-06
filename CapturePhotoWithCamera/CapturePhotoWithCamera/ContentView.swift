//
//  ContentView.swift
//  CapturePhotoWithCamera
//
//  Created by Anupam G on 06/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button("Open Camera"){
                
            }
            .padding(12)
            .foregroundColor(Color.white)
            .background(Color.green)
            .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
