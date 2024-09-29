//
//  LocationListView.swift
//  TourMap
//
//  Created by Ashish Prajapati on 21/09/24.
//

import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject var viewModel: LocationViewModel
    
    var body: some View {
        VStack{
            List {
                ForEach(viewModel.locations) { location in
                    
                    Button {
                        viewModel.onChangeLocation(location: location)
                    } label: {
                        HStack(spacing: 15){
                            Image("\(location.imgNames.first!)")
                                .resizable()
                                .frame(width: 45, height: 45 )
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            VStack(alignment: .leading){
                                Text(location.name)
                                    .font(.headline)
                                Text(location.cityName)
                                    .font(.subheadline)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading )
                            
                        }
                    }
                }
                .padding(.vertical,2)
                .listRowBackground(Color.clear)
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    LocationListView()
        .environmentObject(LocationViewModel())
}
