//
//  ContentView.swift
//  LazyGridSwiftUI
//
//  Created by Anupam G on 20/05/22.
//

import SwiftUI

struct ContentView: View {
    
    let columns : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns,spacing: 10,pinnedViews: [.sectionHeaders], content: {
                    ForEach(1..<11){ sectionIndex in
                        
                        Section(header: headerView(index: sectionIndex)) {
                            ForEach(1..<20){ index in
                                Rectangle()
                                    .fill()
                                    .background(Color.red)
                                    .foregroundColor(Color.red)
                                    .frame(width: 100, height: 100, alignment: .center)
                            }
                        }
                    }
                })
            }.padding()
                .navigationTitle("Pinned View Demo")
        }
    }
    
    private func headerView(index : Int) -> some View{
        return Text("Section \(index)")
            .padding()
            .foregroundColor(.white)
            .font(.title)
            .frame(maxWidth:.infinity)
            .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

