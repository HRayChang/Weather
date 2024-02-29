//
//  WeatherView.swift
//  Weather
//
//  Created by Ray Chang on 2024/2/26.
//

import SwiftUI

struct WeatherView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Stockholm,\nSweden")
                .font(.system(size: 36, weight: .semibold))
            
            Text("Tue, Jan 30")
                .font(.system(size: 20))
                .opacity(0.5)
            
            HStack {
                Image("rain")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                VStack {
                    Text("19")
                        .font(.system(size: 86, weight: .semibold))
                    
                    Text("Rainy")
                        .font(.system(size: 26))
                }
                .padding(.leading)
                
                Spacer()
            }
            .padding()
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(LinearGradient(colors: [Color("light"), Color("dark")], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    WeatherView()
}

// Create the Extension to transform duble into decimal
extension Double {
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
}
