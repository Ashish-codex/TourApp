//
//  ModelLocation.swift
//  TourMap
//
//  Created by Ashish Prajapati on 20/09/24.
//

import Foundation
import MapKit

struct ModelLocation: Identifiable {
    var id = UUID().uuidString
    var name, cityName, description, link : String
    var imgNames : [String]
    var coordinates: CLLocationCoordinate2D 
}
