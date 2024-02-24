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
            
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32,height: 32,alignment: .center)
           // }
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
          
        }//:MAP
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image(.compass)
                    .resizable()
                    .scaledToFit()
                .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading,spacing: 3) {
                    HStack{
                       Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                        
                    }//HStack
                    HStack{
                       Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                        
                    }//HStack
                    Divider()
                }
                
            }//HSTACK
                .padding(.vertical,12)
                .padding(.horizontal,16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
            ,alignment: .top
        )
    }
}

#Preview {
    MapView()
}
