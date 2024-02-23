//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Maya Ghamloush on 23/02/2024.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(filename: String, fileFormat:String) -> AVPlayer{
    if Bundle.main.url(forResource: filename, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}


