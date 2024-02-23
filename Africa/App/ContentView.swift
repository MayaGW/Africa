//
//  ContentView.swift
//  Africa
//
//  Created by Maya Ghamloush on 21/02/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)){
                        AnimalListItemView(animal: animal)
                    }//END OF LINK
                }//FORLOOP
             
                
            }//END OF LIST
            .navigationBarTitle("Africa",displayMode: .large)
        }//END OF NAVIGATION
    }
}
//MARK: - PREVIEWS
#Preview {
    ContentView()
}
