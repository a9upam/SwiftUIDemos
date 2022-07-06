//
//  StartViewPresentation.swift
//  MoviesAppSwift-SwiftUI
//
//  Created by Anupam G on 30/05/22.
//

import Foundation
import SwiftUI

struct StarViewRepresenation : UIViewRepresentable{
    typealias UIViewType = StarView
    
    @Binding var selected : Bool
    func makeUIView(context: Context) -> StarView {
        let starView = StarView()
        return starView
    }
    
    func updateUIView(_ uiView: StarView, context: Context) {
        uiView.selected = self.selected
    }
}
