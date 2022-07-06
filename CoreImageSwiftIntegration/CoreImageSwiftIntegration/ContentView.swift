//
//  ContentView.swift
//  CoreImageSwiftIntegration
//
//  Created by Anupam G on 06/06/22.
//

import SwiftUI

struct ContentView: View {
    
    let images = ["cat1","tree","dog","mountains"]
    private var imageDetectionManager : ImageDetectinoManager
    @ObservedObject var imageDetectionVM : ImageDetectionViewModel
    init(){
        self.imageDetectionManager = ImageDetectinoManager()
        self.imageDetectionVM = ImageDetectionViewModel(manager: imageDetectionManager)
    }
    
    @State private var selectedImage = ""
    var body: some View {
        NavigationView{
            VStack{
                ScrollView([.horizontal]){
                    HStack{
                        ForEach(images,id:\.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .frame(width: 200, height: 200)
                                .padding(12)
                                .onTapGesture {
                                    self.selectedImage = imageName
                                }.border(Color.black,width: self.selectedImage == imageName ?10 :0)
                        }
                        
                    }
                }
                Button("Detect"){
                    self.imageDetectionVM.detect(name: selectedImage)
                }.padding()
                    .foregroundColor(.green)
                    .background(.orange)
                    .cornerRadius(10)
                
                Text("Predictions is \(self.imageDetectionVM.predectionLabel)")
                    .foregroundColor(.white)
                    .background(Color.black)
                    .padding(12)
            }
            .navigationTitle("Core ML")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
