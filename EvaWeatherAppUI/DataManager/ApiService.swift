//
//  ApiService.swift
//  EvaWeatherAppUI
//
//  Created by Ahmed Fathi on 21/07/2024.
//

import Foundation

class ApiService {
    
    static let shared = ApiService()
    
    
    
    
    //    func fetchData() async throws -> WeatherModel {
    //
    //        guard let url = URL(string: urlString) else { return [] }
    //
    //        do {
    //            let (data, _) = try await URLSession.shared.data(from: url)
    //            let results = try JSONDecoder().decode(WeatherModel.self, from: data)
    //            print(results)
    //            return results
    //
    //
    //        } catch  {
    //            print("Error: \(error.localizedDescription)")
    //            return []
    //        }
    //    }
    
    func fetchData(forCity city: String,latitude: String, longitude: String,completionHandler: @escaping (_ weather: WeatherModel?, _ error: Error?) -> Void) {
         let urlString: String = "https://api.open-meteo.com/v1/forecast?latitude=\(latitude)&longitude=\(longitude)&hourly=temperature_2m,rain,showers,snowfall,visibility,wind_speed_10m&timezone=Africa%2FCairo&start_date=2024-08-01&end_date=2024-08-01"
        guard let url = URL(string: urlString) else { return }
       
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard  error == nil , let data = data else { return  completionHandler(nil, error) }
            
            do {

                let result = try JSONDecoder().decode(WeatherModel.self, from: data)
                completionHandler(result, nil)

              //  print(result)
            } catch  {
                completionHandler(nil, error)
                print(error.localizedDescription)

            }
            
        }
        task.resume()
           
            
        }
        
    }




