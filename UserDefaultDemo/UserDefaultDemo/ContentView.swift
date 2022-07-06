//
//  ContentView.swift
//  UserDefaultDemo
//
//  Created by Anupam G on 20/06/22.
//

import SwiftUI

struct ContentView: View {
//    @State var isOn = false
    
    @ObservedObject var settingsVM = SettingsViewModel()
    var body: some View {
        VStack{
            Toggle(isOn: $settingsVM.isOn) {
                Text(settingsVM.isOn ? "On": "Off")
            }.fixedSize()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .background($settingsVM.isOn.wrappedValue ? .green: .red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
