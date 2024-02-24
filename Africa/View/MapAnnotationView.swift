//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Maya Ghamloush on 24/02/2024.
//

import SwiftUI

struct MapAnnotationView: View {
    var location: Location
    @State private var animation: Double = 0.0
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Circle()
                .stroke(Color.accentColor,lineWidth: 2)
                .frame(width: 52, height: 52, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaleEffect( 1 + CGFloat(animation))
                .opacity(1 - animation)
            
            
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48,height: 48,alignment: .center)
            .clipShape(Circle())
        }//ZSTACK
        .onAppear{
            withAnimation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: false)){
                animation = 1.0
            }
        }
    }
}
struct MapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        let locations: [Location] = Bundle.main.decode("locations.json")
        // Use static variable in preview
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
