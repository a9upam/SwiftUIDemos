//
//  ImagePicker.swift
//  CapturePhotoWithCamera
//
//  Created by Anupam G on 06/06/22.
//

import Foundation
import SwiftUI

struct ImagePicker : UIViewControllerRepresentable{
    
    @Binding var isShown : Bool
    @Binding var image : Image?
    
    func makeCoordinator() -> ImagePickerCordinator {
        ImagePickerCordinator(isShown: $isShown, image: $image)
    }
 
    func makeUIViewController(context: Context) -> some UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

class ImagePickerCordinator : NSObject,UINavigationController,UIImagePickerControllerDelegate{
    
    @Binding var isShown : Bool
    @Binding var image : Image?
    
    
    init(isShown: Binding<Bool>,image : Binding<Image?>){
        _image = image
        _isShown = isShown
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        image = Image(uiImage: uiImage)
        isShown = false
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        isShown = false
        
    }
}
