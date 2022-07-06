//
//  WeatherServices.swift
//  GoodWeather
//
//  Created by Anupam G on 25/05/22.
//

import Foundation

let apiKey = "972a8f6a4ee8059c7a1ff26ff6385f6e"
class WeatherServices{
    
    func getWeather(city:String,completion:@escaping(Weather?) ->()){
    //https://api.openweathermap.org/data/2.5/weather?q=London&appid={API key}

        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=imperial")else{
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let weatherResponse = weatherResponse{
                DispatchQueue.main.async {
                    completion(weatherResponse.main)
                }
            }else{
                completion(nil)
            }
        }.resume()
    }
}
