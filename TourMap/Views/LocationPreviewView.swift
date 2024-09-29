//
//  LocationPreviewView.swift
//  TourMap
//
//  Created by Ashish Prajapati on 23/09/24.
//

import SwiftUI

struct LocationPreviewView: View {
    
    
    @EnvironmentObject var viewModel: LocationViewModel
    let location: ModelLocation
    
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading){
                locationImageView
                locationTitleView
            }
            
            VStack{
                btnLearnMore
                btnNext
            }
            
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .clipShape(RoundedRectangle(cornerRadius: 10))
         
        
        
        
    }
}

#Preview {
    ZStack{
        Color.green.ignoresSafeArea()
        LocationPreviewView(location: AppHelper.locations.first!)
            .environmentObject(LocationViewModel())
            
    }
}


extension LocationPreviewView{
    
    var locationImageView: some View {
        VStack{
            if let imgLoc = location.imgNames.first{
                Image(imgLoc)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding(9)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
    
    var locationTitleView: some View{
        VStack{
            Text(location.name)
                .font(.title3)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            
            Text(location.cityName)
                .font(.callout)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                
        }
    }
    
    var btnLearnMore: some View{
        
        Button {
            
            viewModel.isPresentingSheet = true
            
        } label: {
            Text("Learn More")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(BorderedProminentButtonStyle.borderedProminent)
        
    }
    
    var btnNext: some View{
        Button {
            viewModel.onNextClick()
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(BorderedButtonStyle.bordered)
    }
}
