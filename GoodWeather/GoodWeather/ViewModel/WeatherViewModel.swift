//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by Anupam G on 25/05/22.
//

import Foundation
import Combine

class WeatherViewModel : ObservableObject{
    private var weatherWebService : WeatherServices!
    
    @Published var weather : Weather = Weather(temp: 0.0, humidity: 0.0)
    
    init(){
        self.weatherWebService = WeatherServices()
    }
    
    
    var temprature : String{
        if let temp = self.weather.temp{
            return String(format: "%0.f", temp)
        }
        return ""
    }
    
    var humidity : String{
        if let humi = self.weather.humidity{
            return String(format: "%0.f", humi)
        }
        return ""
    }
    
    
    var cityName : String = ""
    func search(){
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed){
            fetchWeather(by: city)
        }
    }
    
    private func fetchWeather(by city : String){
        self.weatherWebService.getWeather(city: city) { weather in
            if let weather = weather {
                DispatchQueue.main.async {
                    self.weather = weather
                }
            }
        }
    }
}
