//
//  VideoPlayerView.swift
//  African Wildlife
//
//  Created by Hussain Alwazzan on 01/09/2022.
//

import SwiftUI
import  AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VideoPlayer(player:playVideo(fileName: videoSelected, fileFormat: "mp4"))
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "lion")
        }
    }
}
