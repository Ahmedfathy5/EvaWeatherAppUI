//
//  Rows.swift
//  EvaWeatherAppUI
//
//  Created by Ahmed Fathi on 21/07/2024.
//

import SwiftUI

struct Rows: View {
   @State var name: String
    
    @State var isSelected: Bool = false
    var body: some View {
        
        VStack {
            HStack {
                HStack {
                    Text(name)
                        .font(.title.bold())
                        .foregroundStyle(.black)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                Button(action: {
                    isSelected.toggle()
                }, label: {
                    Image(systemName: "heart.fill")
                })
                .padding()
                .font(.title2)
                .foregroundStyle(isSelected ? .red : .black)
            }
            Divider()
        }
        
        
    }
}

#Preview {
    Rows(name: "")
}
