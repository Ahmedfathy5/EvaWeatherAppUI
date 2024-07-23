//
//  ContentView.swift
//  EvaWeatherAppUI
//
//  Created by Ahmed Fathi on 21/07/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = WeatherViewModel()
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(vm.cityWeathers) { city in
                        NavigationLink {
                            DetailScreen(temp: city.weater.hourly.temperature_2m[0])
                        } label: {
                            Rows(name: city.city, isSelected: Bool.random())
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Eva Pharma")
        }
        
        
        .onAppear{
            Thread.sleep(forTimeInterval: 3.0)
        }
    }
}

#Preview {
    ContentView()
}
