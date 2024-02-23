//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Maya Ghamloush on 23/02/2024.
//

import SwiftUI

struct ExternalWebLinkView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    //MARK: - BODY
    var body: some View {
        GroupBox{
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Link(animal.name,destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                    Image(systemName: "arrow.up.right.square")
                }//GROUP
                .foregroundColor(.accentColor)
                
            }//HSTACK
        }//GROUPBOX
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        // Use static variable in preview
        ExternalWebLinkView(animal: animals[1])
            .previewLayout(.sizeThatFits) // Set size to fit in Xcode 15
    }
}
