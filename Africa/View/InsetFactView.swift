//
//  InsetFactView.swift
//  Africa
//
//  Created by Maya Ghamloush on 23/02/2024.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact,id: \.self) { item in
                    Text(item)
                }
            }//:TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148,idealHeight: 168,maxHeight: 180)
        }//:BOX
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        // Use static variable in preview
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()// Set size to fit in Xcode 15
    }
}
