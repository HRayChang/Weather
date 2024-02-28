//
//  WeatherView.swift
//  Weather
//
//  Created by Ray Chang on 2024/2/26.
//

import SwiftUI

struct WeatherView: View {
    
    var body: some View {
        VStack {
            
        }
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
