//
//  LocationViewModel.swift
//  TourMap
//
//  Created by Ashish Prajapati on 20/09/24.
//

import Foundation
import MapKit
import SwiftUI

class LocationViewModel: ObservableObject{
    
    @Published var locations: [ModelLocation] = []
    @Published var currentLocation: ModelLocation{
        didSet{
            onUpdateMapRegion(location: currentLocation)
        }
    }
    @Published var mapCameraPosition = MapCameraPosition.region(MKCoordinateRegion())
    @Published var toggleShowList: Bool = false
    @Published var isPresentingSheet: Bool = false
    
    init() {
        let arrLocations = AppHelper.locations
        locations = arrLocations
        currentLocation = arrLocations.first!
        onUpdateMapRegion(location: currentLocation)
    }
    
    
    func getLocations(){
        locations = [
            
            ModelLocation(
                name: "Global Vipassana Pagoda",
                cityName: "Mumbai",
                description: "Built to honour Buddha, this Golden pagoda with a massive stone dome features a meditation hall.",
                link: "https://en.wikipedia.org/wiki/Global_Vipassana_Pagoda",
                imgNames: [],
                coordinates: CLLocationCoordinate2D(latitude: 19.228375597383522, longitude: 72.80581399382064)
            ),
            
            ModelLocation(
                name: "Gateway Of India Mumbai",
                cityName: "Mumbai",
                description: "Grand, Indo-Saracenic-style, 26m-tall triumphal stone arch, built on the waterfront in 1924.",
                link: "https://en.wikipedia.org/wiki/Gateway_of_India",
                imgNames: [],
                coordinates: CLLocationCoordinate2D(latitude: 18.92212930430191, longitude: 72.8346232390982)
            ),
            
            ModelLocation(
                name: "Sanjay Gandhi National Park",
                cityName: "Mumbai",
                description: "Sprawling, forested park home to the ancient Kanheri Caves, a lion & tiger safari & nature trails.",
                link: "https://en.wikipedia.org/wiki/Sanjay_Gandhi_National_Park",
                imgNames: [],
                coordinates: CLLocationCoordinate2D(latitude: 19.22077261985414, longitude: 72.91293875952178)
            ),
            
            ModelLocation(
                name: "Juhu",
                cityName: "Mumbai",
                description: "Juhu is popular for lively Juhu Chowpatty Beach, a long stretch where casual cricket matches are played, and beach vendors offer snacks like bhel puri and ice cream.",
                link: "https://en.wikipedia.org/wiki/Global_Vipassana_Pagoda",
                imgNames: [],
                coordinates: CLLocationCoordinate2D(latitude: 19.105163683387556, longitude: 72.82662033683818)
            ),
            
            ModelLocation(
                name: "Marine Drive",
                cityName: "Mumbai",
                description: "A place to enjoy with friends, make conversations with your loved one. Can go alone as well after a hectic day and enjoy the skyscraper.",
                link: "https://en.wikipedia.org/wiki/Marine_Drive,_Mumbai",
                imgNames: [],
                coordinates: CLLocationCoordinate2D(latitude: 18.94337853813216, longitude: 72.82297684232849)
            ),
            
            ModelLocation(
                name: "ISKCON Temple",
                cityName: "Mumbai",
                description: "4-acre Hare Krishna compound featuring a monumental marble temple & a vegetarian buffet restaurant.",
                link: "https://www.iskconmumbai.com/",
                imgNames: [],
                coordinates: CLLocationCoordinate2D(latitude: 19.113315053146927, longitude: 72.82656527116426)
            ),
            
        ]
    }
    
    func onUpdateMapRegion(location: ModelLocation){
        mapCameraPosition = MapCameraPosition.region(
            MKCoordinateRegion(
                center: location.coordinates,
                span: MKCoordinateSpan(
                    latitudeDelta: 0.1,
                    longitudeDelta: 0.1)
            )
        )
    }
    
    
    func onToggleShowList(){
        withAnimation(.easeInOut) {
            toggleShowList = !toggleShowList
        }
    }
    
    
    func onChangeLocation(location: ModelLocation){
        withAnimation(.easeInOut) {
            currentLocation = location
            toggleShowList = false
        }
    }
    
    
    func onNextClick() {
        
        guard let currentLocationIndex = locations.firstIndex(where: { $0.id == currentLocation.id })
        else{
            print("not found currentLocationIndex")
            return
        }
        
        
        let nextLocationIndex = currentLocationIndex + 1
        
        // This case occurs when we are at the last index and want to find last + 1 which is out of index
        // Restar the location from 0 index
        guard locations.indices.contains(nextLocationIndex) else{
            onChangeLocation(location: locations.first!)  // arr[0]
            return
        }
        
        // When the nextLocationIndex is valid index 
        onChangeLocation(location: locations[nextLocationIndex])
        
        
    }
    
}
