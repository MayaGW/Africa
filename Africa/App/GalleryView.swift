//
//  GalleryView.swift
//  Africa
//
//  Created by Maya Ghamloush on 21/02/2024.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - PROPERTIES
    @State private var selectedAnimal:String = "lion"
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    
    
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
   //EFFICIENT GRID DEF
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 4)
    
    //DYNAMIC GRID LAYOUT
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack (alignment: .center, spacing: 10){
                
                //MARK: - IMAGE
               Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(.white, lineWidth: 8)
                    )
                
                //MARK: - SLIDER
                Slider(value: $gridColumn,in: 2...4,step:1)
                    .padding()
                    .onChange(of: gridColumn, perform: { _ in
                        gridSwitch()
                    })
                //MARK: - GRID
                LazyVGrid(columns: gridLayout,alignment: .center,spacing: 10){
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white,lineWidth: 1)
                            )
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            }
                    }//LOOP
                }//GRIDVIEW
                .animation(.easeIn)
                .onAppear(perform: {
                    gridSwitch()
                })
            }//VSTACK
            .padding(.horizontal,10)
            .padding(.vertical,50)
        }//SCROLL
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}
//MARK: - PREVIEW
#Preview {
    GalleryView()
}
