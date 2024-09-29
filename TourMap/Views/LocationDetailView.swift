//
//  LocationDetailView.swift
//  TourMap
//
//  Created by Ashish Prajapati on 26/09/24.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    @EnvironmentObject var viewModel: LocationViewModel
    let selectedLocation: ModelLocation
    
    var body: some View {
        ScrollView {
            VStack{
               
                SwipeImageView
                .frame(height: 500)
                .tabViewStyle(PageTabViewStyle())
                .shadow(color: .black.opacity(0.3), radius: 20, y: 9)
                
                VStack(alignment: .leading, spacing: 16){
                    
                    TitleSection
                    
                    Divider()
                    
                    DescriptionSection
                    
                    Divider()
                    
                    MapLocation
                }
                .padding()
                
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(alignment: .topTrailing) {
            BtnCancel
        }
    }
}

#Preview {
    LocationDetailView(selectedLocation: AppHelper.locations.first!)
        .environmentObject(LocationViewModel())
}


extension LocationDetailView{
    
    private var SwipeImageView: some View{
        TabView {
            ForEach(selectedLocation.imgNames, id: \.self) { img in
                Image(img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }
    }
    
    
    private var TitleSection: some View{
        VStack(alignment: .leading, spacing: 8){
            Text(selectedLocation.name)
                .font(.title)
                .fontWeight(.semibold)
            
            Text(selectedLocation.cityName)
                .font(.title3)
                .foregroundStyle(.secondary)
        }
        .padding(.top, 14)
    }
    
    
    private var DescriptionSection: some View{
        VStack(alignment: .leading, spacing: 8){
            Text(selectedLocation.description)
                .font(.headline)
                .foregroundStyle(.secondary)
            
            if let url = URL(string: selectedLocation.link){
                Link("Read more on Wikipedia", destination: url)
                    .font(.subheadline)
                    .tint(.blue)
            }
            
        }
        .padding(.top, 14)
    }
    
    
    private var MapLocation: some View{
        VStack{
            
            Map(position: .constant(
                MapCameraPosition.region(
                    MKCoordinateRegion(center: selectedLocation.coordinates, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
                )
            )){
                Annotation(selectedLocation.name, coordinate: selectedLocation.coordinates) {
                    MapMarkerView()
                        .scaleEffect(0.7)
                        .shadow(radius: 10)
                }
                
            }
            .allowsHitTesting(false)
            .aspectRatio(1, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
    
    
    private var BtnCancel: some View{
        Button(action: {
            
            viewModel.isPresentingSheet = false
            
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(10)
                .foregroundStyle(.black)
                .background(.thickMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 4)
                .padding()
        })
    }
    
}
