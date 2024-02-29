//
//  WeatherView.swift
//  Weather
//
//  Created by Ray Chang on 2024/2/26.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("\(weather.name)")
                .font(.system(size: 36, weight: .semibold))
            
            Text("\(Date().formatted(.dateTime.month().day()))")
                .font(.system(size: 20))
                .opacity(0.5)
            
            HStack {
                Image(systemName: "cloud.rain.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                VStack {
                    Text("\(weather.main.feelsLike.roundDouble())")
                        .font(.system(size: 86, weight: .semibold))
                    
                    Text("\(weather.weather[0].main)")
                        .font(.system(size: 26))
                }
                .padding(.leading)
                
                Spacer()
            }
            .padding()
            
            // Add Cards to show humidity, wind etc.
            Spacer()
            CardView(icon: "thermometer", text: "Min temp", value: weather.main.tempMin.roundDouble() + "*")
            CardView(icon: "thermometer", text: "Max temp", value: weather.main.tempMax.roundDouble() + "*")
            CardView(icon: "wind", text: "Wind Speed", value: weather.wind.speed.roundDouble() + "m/s")
            CardView(icon: "humidity", text: "Humidity", value: weather.main.humidity.roundDouble() + "%")
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(LinearGradient(colors: [Color("light"), Color("dark")], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    WeatherView(weather: previewWeather)
}

// Create the Extension to transform duble into decimal
extension Double {
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
}

struct CardView: View {
    var icon: String
    var text: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: icon)
                .imageScale(.large)
                .frame(width: 60, height: 60)
                .background(.white.opacity(0.7))
                .cornerRadius(12)
            
              Text(text)
                .font(.system(size: 15))
            
            Spacer()
            
            Text("\(value)")
                .font(.headline)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .frame(height: 70)
        .background(.white.opacity(0.3))
        .cornerRadius(12)
    }
}
