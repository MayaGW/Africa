//
//  HeadingView.swift
//  Africa
//
//  Created by Maya Ghamloush on 22/02/2024.
//

import SwiftUI

struct HeadingView: View {
    //MARK: - Properties
    var headingImage: String
    var headingText: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }//HASTACK
        .padding(.vertical)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness is Picture")
        .padding()
}

