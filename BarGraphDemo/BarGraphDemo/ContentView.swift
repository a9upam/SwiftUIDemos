//
//  ContentView.swift
//  BarGraphDemo
//
//  Created by Anupam G on 01/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
