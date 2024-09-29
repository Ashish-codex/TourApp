//
//  TourMapApp.swift
//  TourMap
//
//  Created by Ashish Prajapati on 20/09/24.
//

import SwiftUI

@main
struct TourMapApp: App {
    
    @StateObject var locationViewModel = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeLocationView()
                .environmentObject(locationViewModel)
        }
    }
}
