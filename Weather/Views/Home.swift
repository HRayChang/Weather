//
//  Home.swift
//  Weather
//
//  Created by Ray Chang on 2024/2/24.
//

import SwiftUI

struct Home: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Longitude: \(location.longitude), Latitude: \(location.latitude)")
            } else {
                if locationManager.isLoading {
                    ProgressView()
                } else {
                    Welcome()
                        .environmentObject(locationManager)
                }
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(LinearGradient(colors: [Color("light"), Color("dark")], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    ContentView()
}
