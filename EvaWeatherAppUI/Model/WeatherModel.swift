//
//  WeatherModel.swift
//  EvaWeatherAppUI
//
//  Created by Ahmed Fathi on 21/07/2024.
//

import Foundation


struct WeatherModel: Codable {
    
    let hourly: Hourly

    struct Hourly: Codable {
    
        let temperature_2m: [Double]
        
    }
}

struct CityWeather: Identifiable {
    let id = UUID().uuidString
    let city: String
    let weater: WeatherModel
}


