//
//  Hike.swift
//  Hiking
//
//  Created by Anupam G on 18/05/22.
//

import Foundation

struct Hike{
    let name : String
    let imageUrl : String
    let miles : Double
    
}

extension Hike{
    static func all() ->[Hike]{
        [
        Hike(name: "Anupam Gupta", imageUrl: "sal", miles: 6),
        Hike(name: "Bhavana Gupta", imageUrl: "tom", miles: 5),
        Hike(name: "Aditya Gupta", imageUrl: "tam", miles: 7)
        ]
    }
}
