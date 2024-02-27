//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Maya Ghamloush on 27/02/2024.
//

import SwiftUI

struct AnimalGridItemView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    //MARK: -  BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

 
struct AnimalGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        // Use static variable in preview
        AnimalGridItemView(animal: animals[1])
            .previewLayout(.sizeThatFits) // Set size to fit in Xcode 15
    }
}
