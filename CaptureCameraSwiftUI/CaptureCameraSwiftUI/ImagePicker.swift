//
//  ImagePicker.swift
//  CaptureCameraSwiftUI
//
//  Created by Anupam G on 20/06/22.
//

import SwiftUI
import Foundation



class ImagePickerCoordinater : NSObject,UINavigationControllerDelegate,UIImagePickerControllerDelegate{
    
    @Binding var isShown: Bool
    @Binding var image : Image?

    init(isShown : Binding<Bool>,image :Binding<Image?>){
        _isShown = isShown
        _image = image
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let uiimage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        image = Image(uiImage: uiimage)
        isShown = false
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        isShown = false
    }
}


struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var isShown: Bool
    @Binding var image : Image?
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    
    func makeCoordinator() -> ImagePickerCoordinater {
        return ImagePickerCoordinater(isShown: $isShown, image: $image)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker(isShown: .constant(false), image: .constant(Image("")))
    }
}
