//
//  VideoListItem.swift
//  Africa
//
//  Created by Maya Ghamloush on 23/02/2024.
//

import SwiftUI

struct VideoListItemView: View {
    //MARK: - Properties
    let video: Video
    
    //MARK: - Body
    var body: some View {
        HStack(spacing:10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//zstavck
            VStack(alignment:.leading,spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(2)
            }//:VSTACK
        }//:hstack
    }
}

 
struct VideoListItem_Previews: PreviewProvider {
    static var previews: some View {
        let videos: [Video] = Bundle.main.decode("videos.json")
        // Use static variable in preview
        VideoListItemView(video:videos[0])
            .previewLayout(.sizeThatFits) //  size to fit in Xcode 15
    }
}
