//
//  Video.swift
//  Africa
//
//  Created by Maya Ghamloush on 23/02/2024.
//

import Foundation
struct Video: Codable,Identifiable{
    let id: String
    let name: String
    let headline: String
    
    //computed property
    var thumbnail: String{
        "video-\(id)"
        
    }
}
