//
//  Weather.swift
//  GoodWeather
//
//  Created by Anupam G on 25/05/22.
//

import Foundation

struct Weather : Decodable{
    let temp : Double?
    let humidity : Double?
}

struct WeatherResponse : Decodable{
    let main : Weather
}
