//
//  CardView.swift
//  Gesture-Demo
//
//  Created by Anupam G on 01/06/22.
//

import SwiftUI

struct CardView: View {
    let tapped :  Bool
    
    @State private var scaleLength : CGFloat = 1.0

    var body: some View {
        VStack{
            
            //Magnitude Gesture
            Image("A1")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
                .scaleEffect(scaleLength)
                .gesture(MagnificationGesture().onChanged({ value in
                    self.scaleLength = value.magnitude
                }))
            
            Text("Card")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
        .background(tapped ? Color.orange: Color.purple)
        .cornerRadius(50)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(tapped: false)
    }
}
