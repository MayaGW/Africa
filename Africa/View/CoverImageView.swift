//
//  CoverImageView.swift
//  Africa
//
//  Created by Maya Ghamloush on 21/02/2024.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: - PROPERTIES
    let coverImades: [CoverImage] = Bundle.main.decode("covers.json")
    
    
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(coverImades) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//" LOOP
        }//TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }
}
//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
}
