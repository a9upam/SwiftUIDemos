//
//  SearchBar.swift
//  SearchingInList
//
//  Created by Anupam G on 20/06/22.
//

import Foundation
import SwiftUI

struct SearchBar : UIViewRepresentable {
    
    @Binding var text : String
    
    func makeCoordinator() -> Coordinator {
        Coordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.text = text
    }
    
    
    class Coordinator : NSObject,UISearchBarDelegate{
        @Binding var text : String
        
        init(text:Binding<String>){
            _text = text
        }
        
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
        
        
    }
}
