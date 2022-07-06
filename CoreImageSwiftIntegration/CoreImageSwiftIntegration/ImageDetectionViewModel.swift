//
//  ImageDetectionViewModel.swift
//  CoreImageSwiftIntegration
//
//  Created by Anupam G on 06/06/22.
//

import Foundation
import SwiftUI
import Combine

class ImageDetectionViewModel : ObservableObject{
    var name : String = ""
    
    var manager : ImageDetectinoManager
    @Published var predectionLabel : String = ""
    
    init(manager : ImageDetectinoManager){
        self.manager = manager
    }
    
    func detect(name : String){
        let orignalImage =  UIImage(named: name)
        guard let clippedImage = orignalImage?.resizeImage(targetSize: CGSize(width: 224.0, height: 224.0))else {return }
        predectionLabel = manager.detect(img: clippedImage) ?? ""
        
        
        //resize the image
        //detect the image
        //update the prediction label
        
    }
    
}
