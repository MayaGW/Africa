//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Maya Ghamloush on 23/02/2024.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    //MARK: - PROPERTIES
    var videoSelected: String
    var videTitle: String
    
    //MARK: - BODY
    var body: some View {
       
        VStack {
            VideoPlayer(player: playVideo(filename:  videoSelected, fileFormat: "mp4")){
                 
            }
            .overlay(
                Image(.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32)
                    .padding(.top,6)
                    .padding(.horizontal,8)
                ,alignment: .topLeading
                
            )
        }//VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videTitle, displayMode: .inline)
    }
}

#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videTitle:  "Lion")
    }
}
