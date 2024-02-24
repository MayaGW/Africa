//
//  GalleryView.swift
//  Africa
//
//  Created by Maya Ghamloush on 21/02/2024.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            Text("GalleryView")
        }//SCROLL
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView()
}
