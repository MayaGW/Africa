//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Maya Ghamloush on 22/02/2024.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    let animal : Animal
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24)
                    )
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.accent)
                    .padding(.horizontal)
               // GALLERY
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness is Picture")
                    InsetGalleryView(animal: animal)
                }//GROUP
               .padding(.horizontal)
                //FACTS
                Group{
                 HeadingView(headingImage: "questionmark.circle", headingText: "Did You Know?")
                    InsetFactView(animal: animal)
                }//GROUP
                .padding(.horizontal)
                //DESCRIPTION
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "ALL about\(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    
                }//GROUP
                .padding(.horizontal)
                //MAP
                Group{
                    HeadingView(headingImage: "map", headingText: "National Park")
                    InsetMapView()
                }//GROUP
                .padding(.horizontal)
                //LINK
                Group{
                  HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWebLinkView(animal: animal)
                }//GROUP
                .padding(.horizontal)
                
                
            }//End of vstack
            .navigationBarTitle("Learn about\(animal.name)",displayMode: .inline)
        }//end of scroll
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        NavigationView {
            AnimalDetailView(animal: animals[1])
                .previewLayout(.sizeThatFits)
            
        }
    }
}
