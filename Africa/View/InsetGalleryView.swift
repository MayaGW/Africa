//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Maya Ghamloush on 22/02/2024.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment: .center,spacing: 15){
                ForEach(animal.gallery,id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }//LOOOP
            }//HSTACK
        }//SCROLLVIEW
    }
}

 

    struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
          // Use static variable in preview
        InsetGalleryView(animal: animals[1])
              .previewLayout(.sizeThatFits) // Set size to fit in Xcode 15
      }
}
 
