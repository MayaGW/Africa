//
//  VideoListView.swift
//  Africa
//
//  Created by Maya Ghamloush on 21/02/2024.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - PROPERTIES
  @State  var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(videos) { video in
                    NavigationLink(destination: VideoPlayerView(videoSelected: video.id, videTitle: video.name)) {
                        VideoListItemView(video: video)
                            .padding(.vertical,8)
                    }
                }//:LOOP
            }//List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }, label: {
                       Image(systemName: "arrow.2.squarepath")
                    })
                }
            }
        }//navigationView
        }
    }


#Preview {
    VideoListView()
}
