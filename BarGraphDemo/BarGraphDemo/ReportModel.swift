//
//  ReportModel.swift
//  BarGraphDemo
//
//  Created by Anupam G on 01/06/22.
//

import Foundation
struct Report:Hashable{
    let year : String
    let revenue : Double
}


extension Report{
    
    static func all() ->[Report]{
        return [
            Report(year: "2003", revenue: 1292),
            Report(year: "2000", revenue: 1828),
            Report(year: "1999", revenue: 283),
            Report(year: "2022", revenue: 2884)
        ]

    }
}
