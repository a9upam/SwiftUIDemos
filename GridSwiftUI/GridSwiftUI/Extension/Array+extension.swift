//
//  Array+extension.swift
//  GridSwiftUI
//
//  Created by Anupam G on 19/05/22.
//

import Foundation

//
//extension Array {
//    func chunks(size : Int) -> [ArraySlice<Element>]{
//        var chunks: [ArraySlice<Element>] = [ArraySlice<Element>]()
//
//        for index in stride(from: 0, through: self.count, by: size){
//            var chunk = Array<Element>()
//            let end = index + size
//            if end >= self.count{
//                chunk = self[index..<self.count]
//            }else{
//                chunk = self[index..<end]
//            }
//            
//            chunks.append(chunk)
//            if end + 1 == self.count{
//                let remainingChunk = self[end..<self.count]
//            }
//        }
//        return chunks
//    }
//}


extension Array {
    
    func chunks(size: Int) -> [ArraySlice<Element>] {
        
        var chunks: [ArraySlice<Element>] = [ArraySlice<Element>]()
        
        for index in stride(from: 0, to: self.count - 1, by: size) {
            
            var chunk = ArraySlice<Element>()
            let end = index + size
            if end >= self.count {
                chunk = self[index..<self.count]
            } else {
                chunk = self[index..<end]
            }
            
            chunks.append(chunk)
            
            if (end + 1) == self.count {
                let remainingChunk = self[end..<self.count]
                chunks.append(remainingChunk)
            }
            
        }
        
        return chunks
        
    }
    
}
