//
//  ContentView.swift
//  SearchingInList
//
//  Created by Anupam G on 20/06/22.
//

import SwiftUI

struct ContentView: View {
    
    let names = ["Anupam","Aditya", "Ajay", "Raja","Raghvendra","Vitul","Amit"]
    
    @State private var searchTerm = ""
    
    var body: some View {
        List{
            SearchBar(text: $searchTerm)
            let filteredArray = names.filter{$0.localizedCaseInsensitiveContains(searchTerm)}
    
            ForEach(filteredArray,id:\.self){name in
                Text(name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
