//
//  InsetMapView.swift
//  Africa
//
//  Created by Maya Ghamloush on 23/02/2024.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    //MARK: - PROPERTIES
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60, longitudeDelta: 60))
    //MARK: - Body
    var body: some View {
      Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()){
                    HStack{
                     Image(systemName: "mappin.circle")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }//HSTACK
                    .padding(.vertical,10)
                    .padding(.horizontal,14)
                    .background(
                        Color.blue
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                }//NAVIGATION
                    .padding(12),alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InsetMapView()
        .padding()
}
