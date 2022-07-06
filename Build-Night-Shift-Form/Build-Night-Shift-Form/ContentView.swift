//
//  ContentView.swift
//  Build-Night-Shift-Form
//
//  Created by Anupam G on 02/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var scheduled : Bool  = false
    @State private var mannuallyEnableTillTom : Bool  = false
    @State private var sliderValue : Double  = 0.5


    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Night shift automaticaaly shift colors.Night shift automaticaaly shift colors.Night shift automaticaaly shift colors.Night shift automaticaaly shift colors")
                            .padding(5)
                            .lineLimit(nil)
                            .font(.caption2)) {
                    Toggle(isOn: $scheduled) {
                        Text("Scheduled")
                    }
                    
                    HStack{
                        VStack{
                            Text("From")
                            Text("To")
                        }
                        Spacer()
                        NavigationLink(destination:Text("Scheduled Settings")){
                            VStack{
                                Text("Sunset")
                                Text("Sunrse")
                            } .foregroundColor(Color.blue)
                        }.fixedSize()
                    }
                }
                
                Section(header: Text("").padding(5)) {
                    Toggle(isOn: $mannuallyEnableTillTom) {
                        Text("Manually Enabled till tommorrow")
                    }
                }
                
                Section(header: Text("Colour Temprature".uppercased()).padding()) {
                    VStack{
                        HStack{
                            Text("Less Warm")
                            Spacer()
                            Text("More Warm")
                        }
                        Slider(value: $sliderValue)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
