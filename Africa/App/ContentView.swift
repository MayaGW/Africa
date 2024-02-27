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
    @State private var isGridViewActive: Bool = false
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    //let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    //MARK: - FUNCTIONS
    func gridSwtich(){
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("grid column\(gridColumn)")
        
        //TOOLBARIMAGE
        switch gridColumn{
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
        
    }
    //MARK: - BODY
    var body: some View {
        NavigationView{
            Group{
                if !isGridViewActive {
                    List{
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)){
                                AnimalListItemView(animal: animal)
                            }//END OF LINK
                        }//FORLOOP
                    }//LIst
                } else {
                    ScrollView(.vertical,showsIndicators: false) {
                        LazyVGrid(columns:gridLayout,alignment: .center,spacing:10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)){
                                    AnimalGridItemView(animal: animal)
                                }
                            }
                        }//:GRID
                        .padding(10)
                        .animation(.easeIn)
                    }//SCROLLVIEW
                }//END OF Condition
                
            }//GROUP
            .navigationBarTitle("Africa",displayMode: .large)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing:16){
                        //List
                        Button(action: {
                            isGridViewActive = false
                            haptics.impactOccurred()
                             
                        }, label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                             
                        })
                        Button(action: {
                            isGridViewActive = true
                            haptics.impactOccurred()
                            gridSwtich()
                        }, label: {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        })
                    }//Hstack
                }//TOOLBAR ITEMS BUTTONs
            }//TOOLBAR
        }//END OF NAVIGATION
    }
}
//MARK: - PREVIEWS
#Preview {
    ContentView()
}
