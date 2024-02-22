//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Maya Ghamloush on 22/02/2024.
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK: - PROPERTIES
    
    let animal: Animal
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center,spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )

            VStack(alignment: .leading,spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                   .font(.footnote)
                   .multilineTextAlignment(.leading)
                   .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                   .padding(.trailing,8)
                
                    
                
            }//VSTACK
        }
    }
}
////MARK: - PREVIEW
//#Preview(traits: .sizeThatFitsLayout) {
//    
//    AnimalListItemView()
//        .padding()
//}
