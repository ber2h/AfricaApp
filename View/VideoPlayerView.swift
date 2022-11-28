//
//  VideoPlayerView.swift
//  AfricaAppSwiftUI
//
//  Created by Bertuğ Horoz on 24.11.2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected : String
    var videotitle : String
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected  , fileFormat: "mp4")) {
                // Text(videotitle)
            }
        } // : VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videotitle , displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videotitle: "lion")
        }
    }
}
