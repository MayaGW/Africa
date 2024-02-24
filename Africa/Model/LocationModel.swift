//
//  LocationModel.swift
//  Africa
//
//  Created by Maya Ghamloush on 24/02/2024.
//

import Foundation
import MapKit
struct Location : Identifiable, Codable{
    
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    //Computed Property
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
