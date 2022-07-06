//
//  ImageDetectinoManager.swift
//  CoreImageSwiftIntegration
//
//  Created by Anupam G on 06/06/22.
//

import Foundation
import UIKit
import CoreML
class ImageDetectinoManager{
    
    let model = Resnet50()
    func detect(img : UIImage)->String?{
        guard let pixelBuffer = img.toCVPixelBuffer()else{return nil}
        let prediction : Resnet50Output? = try? model.prediction(image: pixelBuffer)
        return prediction?.classLabel
    }
    
    
}
