//
//  BarGraph.swift
//  BarGraphDemo
//
//  Created by Anupam G on 01/06/22.
//

import Foundation
import SwiftUI
import Combine

struct BarGraph: View{
    
    let reports :[Report]
    var body: some View{
        
        VStack{
            
            
            
            HStack(alignment: .lastTextBaseline){
                ForEach(self.reports,id:\.year){ report in
//                    Text(report.year)
                    BarView(report: report)
                }
            }
//            HStack(alignment: .lastTextBaseline){
//
//
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 200)
//                    .padding()
//
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                    .padding()
//
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 100, height: 400)
//                    .padding()
//
//
//                Spacer()
//            }
            
        }

    }
}

struct BarGraph_Preview : PreviewProvider{
    static var previews: some View{
        BarGraph(reports: Report.all())
    }
}


struct BarView: View{
    let report : Report
    
    @State private var showGraph : Bool = false
    
    var body: some View{
        
        let value = report.revenue/500
        let yValue = Swift.min(value*20, 500)
        VStack{
            
            Text(report.revenue.description + "$")
                .font(.subheadline)

            
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: CGFloat(yValue))
                .onAppear{
                    withAnimation(.spring()) {
                        self.showGraph = true
                    }
                }
            Text(report.year)
        }
    }
}
