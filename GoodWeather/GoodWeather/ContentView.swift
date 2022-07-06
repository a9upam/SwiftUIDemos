//
//  ContentView.swift
//  GoodWeather
//
//  Created by Anupam G on 25/05/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var weatherViewModel : WeatherViewModel
    
    init(){
        self.weatherViewModel = WeatherViewModel()
    }

    var body: some View {
        VStack(alignment: .center){
            TextField("City Name", text: self.$weatherViewModel.cityName, onCommit: {
                self.weatherViewModel.search()
            })
                .font(.custom("Arial", size: 50))
                .fixedSize()
                .padding()

            Text(self.weatherViewModel.temprature)
                .padding()
                .fixedSize()
                .font(.custom("Arial", size: 150))
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
