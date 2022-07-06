//
//  ContentView.swift
//  Gesture-Demo
//
//  Created by Anupam G on 01/06/22.
//

import SwiftUI

struct ContentView: View {

    @State private var tapped : Bool = false
    @State private var cardDragYState : CGSize = .zero
    @State private var cardDragXState : CGSize = .zero
    @State private var cardRotateState : Double = 0.0

    var body: some View {
        CardView(tapped:tapped)
            .animation(.spring().speed(2.0))
            
            .offset(x:cardDragXState.width, y:self.cardDragYState.height)
            .rotationEffect(Angle(degrees: cardRotateState))
        
            .gesture(RotationGesture()
                        .onChanged({ value in
                self.cardRotateState = value.degrees
            })
            )
            .gesture(DragGesture()
                        .onChanged{ change in
                self.cardDragYState = change.translation
                self.cardDragXState = change.translation
            }
                        .onEnded{ value in
                self.cardDragYState = CGSize.zero
                self.cardDragXState = CGSize.zero

            }
                
            )
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/* Tapp Gesture

@State private var tapped : Bool = false
var body: some View {
    CardView(tapped:tapped)
        .gesture(TapGesture(count: 1).onEnded({  () in
            self.tapped.toggle()
        })
        )
}
 */

/* Drag Gesture
 
 struct ContentView: View {

     @State private var tapped : Bool = false
     @State private var cardDragYState : CGSize = .zero
     @State private var cardDragXState : CGSize = .zero

     var body: some View {
         CardView(tapped:tapped)
             .animation(.spring().speed(2.0))
             
             .offset(x:cardDragXState.width, y:self.cardDragYState.height)
             .gesture(DragGesture()
                         .onChanged{ change in
                 self.cardDragYState = change.translation
                 self.cardDragXState = change.translation
             }
                         .onEnded{ value in
                 self.cardDragYState = CGSize.zero
                 self.cardDragXState = CGSize.zero

             }
             )
     }
 }
 
 
 */
