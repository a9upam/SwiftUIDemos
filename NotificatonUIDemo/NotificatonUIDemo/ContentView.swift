//
//  ContentView.swift
//  NotificatonUIDemo
//
//  Created by Anupam G on 02/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var images = ["🗾","🌅","🌄","🌠","🎇","🌇","🗾","🌅","🌄","🌠","🎇","🌇"]

    var body: some View {
        NavigationView{
            Form{
                
                Section(header:Text("")){
                    HStack{
                        Text("Show Preview")
                        Spacer()
                        NavigationLink(destination:Text("")){
                            Text("Always")
                                .foregroundColor(Color.gray)
                        }
                        .fixedSize()
                    }
                }
                
                Section(header:Text("Notification preview will be shown wheather the iphone is locked or unlocked").foregroundColor(Color.gray).padding().lineLimit(nil)){
                    HStack{
                        NavigationLink(destination:Text("")){
                            Text("Siri Suggestion")
                        }
                    }
                }
                
                Section(header:Text("Choose while apps cab suggest wgirtcutsa on the lock screen \n\n NOTIFICATION STYLE")){
                    ForEach(images,id:\.self){img in
                        HStack{
                            Text(img)
                                .font(.title)
                            Text("Notification")
                        }
                        
                    }
                }
            }
            .navigationBarTitle("Notifications")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
