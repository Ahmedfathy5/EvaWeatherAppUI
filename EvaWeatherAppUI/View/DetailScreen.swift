//
//  DetailScreen.swift
//  EvaWeatherAppUI
//
//  Created by Ahmed Fathi on 23/07/2024.
//

import SwiftUI

struct DetailScreen: View {
    @StateObject var vm = WeatherViewModel()
   @State var temp: Double = 30.12
    var body: some View {
        VStack {
            Text("The tempreture is \(temp)")
        }
    }
}

#Preview {
    DetailScreen()
}
