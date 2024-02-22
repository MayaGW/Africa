//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Maya Ghamloush on 22/02/2024.
//

import Foundation
extension Bundle{
    func decode<T: Codable>(_ file: String) -> T{
        // 1. Locate the JSOn file
        
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate \(file) in bundle")
        }
        
        
        //2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load  \(file) from bundle")
        }
        
        //3. create a decoder
        
        let decoder = JSONDecoder()
        //4. create a property for the decoded data
        
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode  \(file) from bundle")
        }
        //4. Retuen the ready to use data
        return loaded
    }
    
    
}
