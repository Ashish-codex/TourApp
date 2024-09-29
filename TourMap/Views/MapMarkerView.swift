//
//  MapMarkerView.swift
//  TourMap
//
//  Created by Ashish Prajapati on 26/09/24.
//

import SwiftUI

struct MapMarkerView: View {
    
    let accentColor = Color("AccentColor")
    
    var body: some View {
        
        VStack(spacing:0){
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundStyle(.white)
                .padding(6)
                .background(accentColor)
                .clipShape(Circle())
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .rotationEffect(.degrees(180))
                .frame(width: 12, height: 12)
                .foregroundStyle(accentColor)
                .offset(y: -3)
//                .padding(.bottom, 40)
        }
    }
}

#Preview {
    ZStack{
        MapMarkerView()
    }
}
