//
//  ContentView.swift
//  CaptureCameraSwiftUI
//
//  Created by Anupam G on 20/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showImagePicker : Bool = false
    @State private var image : Image? = nil
    
    var body: some View {
        VStack{
            image?.resizable()
                .scaledToFit()
            
            Button("Open Camera") {
                showImagePicker = true
            }.padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .sheet(isPresented: $showImagePicker) {
            //
        } content: {
            PhotoCaptureView(showImagePicker: $showImagePicker, image: $image)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
