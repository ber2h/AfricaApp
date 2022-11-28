//
//  VideoListView.swift
//  AfricaAppSwiftUI
//
//  Created by Bertuğ Horoz on 23.11.2022.
//

import SwiftUI

struct VideoListView: View {
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    @State var videos : [Video] = Bundle.main.decode("videos.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videotitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                } // : LOOP
                .listStyle(InsetListStyle())
            } // : LIST
            .navigationBarTitle("Videos" , displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } // : NAVIGATION
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
