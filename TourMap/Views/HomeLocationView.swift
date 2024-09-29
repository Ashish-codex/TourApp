//
//  ContentView.swift
//  TourMap
//
//  Created by Ashish Prajapati on 20/09/24.
//

import SwiftUI
import MapKit

struct HomeLocationView: View {
    
    @EnvironmentObject var viewModel: LocationViewModel
    

    var body: some View {
        
        ZStack{
            
            Map(position: $viewModel.mapCameraPosition){
                
                ForEach(viewModel.locations) { location in
                    
                    Annotation(location.name, coordinate: location.coordinates) {
                        
                        MapMarkerView()
                            .scaleEffect(viewModel.currentLocation.id == location.id ? 1 : 0.7)
                            .shadow(radius: 10)
                            .onTapGesture {
                                viewModel.onChangeLocation(location: location)
                            }
                    }
                }
            
            }
            
            
            VStack{
                
                headerView
                    .padding()
                
                Spacer()
                
                LocationPreviewView(location: viewModel.currentLocation)
                    .shadow(color: .black.opacity(0.4), radius: 10, y: 20)
                    .padding()
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .leading)))
            }
            
        }
        .sheet(isPresented: $viewModel.isPresentingSheet, content: {
             LocationDetailView(selectedLocation: viewModel.currentLocation)
        })
        
    }
}

#Preview {
    HomeLocationView()
        .environmentObject(LocationViewModel())
}



extension HomeLocationView{
    
    private var headerView: some View{
        
        VStack{
            
            Button(action: viewModel.onToggleShowList) {
                Text("\(viewModel.currentLocation.name), \(viewModel.currentLocation.cityName)")
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.up")
                            .font(.callout)
                            .fontWeight(.semibold )
                            .foregroundStyle(.black)
                            .padding()
                            .rotationEffect(.degrees(viewModel.toggleShowList ? -180 : 0))
                    }
            }
            
            if(viewModel.toggleShowList){
                LocationListView()
            }
            
            
            
            
        }
        .background(.thickMaterial)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
        .shadow(color: .black.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 15)
        
        
    }
}
