//
//  WeatherViewModel.swift
//  EvaWeatherAppUI
//
//  Created by Ahmed Fathi on 21/07/2024.
//

import Foundation

class WeatherViewModel: ObservableObject {
    @Published var cityWeathers: [CityWeather] = []
    
    init() {
        fetchWeatherData()
    }
    
  private func fetchWeatherData()  {
        
        let cities = [
            ("Mansoura", "31.0364", "31.3807"),
            ("Tokyo", "35.6895", "139.6917"),
            ("Madrid", "40.4168", "-3.7038"),
            ("Lagos", "6.5244", "3.3792"),
            ("Moscow", "55.7558", "37.6176")
        ]
        for city in cities {
            ApiService.shared.fetchData(forCity: city.0, latitude: city.1 , longitude: city.2) { weather, error in
                if let weather = weather {
                    let cityWeather = CityWeather(city: city.0, weater: weather)
                    DispatchQueue.main.async {
                        self.cityWeathers.append(cityWeather)
                    }
                }
            }
        }
        
        
    }
}




