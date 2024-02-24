//
//  MapView.swift
//  Africa
//
//  Created by Maya Ghamloush on 21/02/2024.
//

import SwiftUI
import MapKit



 

struct MapView: View {
    //MARK: - PROPERTIES
    let locations: [Location] = Bundle.main.decode("locations.json")
    @State private var region: MKCoordinateRegion = {
      var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
      var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
      var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
      
      return mapRegion
    }()
    var body: some View {
       //MARK: -  BAsic Map
      // Map(coordinateRegion: $region)
        //MARK: - ADVANCED MAP
        Map(coordinateRegion: $region,annotationItems: locations) { item in
            //OPTION A PIN OLD STYLE
           // MapPin(coordinate: item.location,tint: .accentColor)
            //OPTION B MARKER : NEW STYLE ALWAYS STATIC
//            MapMarker(coordinate: item.location,tint: .accentColor)
          //  OPTION C  CUSTOM
            
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32,alignment: .center)
            }
        }
    }
}

#Preview {
    MapView()
}
