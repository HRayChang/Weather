//
//  Welcome.swift
//  Weather
//
//  Created by Ray Chang on 2024/2/24.
//

import SwiftUI

struct Welcome: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Welcome()
}
