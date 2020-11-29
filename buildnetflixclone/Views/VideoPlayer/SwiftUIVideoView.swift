//
//  SwiftUIVideoView.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/29/20.
//

import SwiftUI
import AVKit

struct SwiftUIVideoView: View {
    var url: URL
    private var player: AVPlayer{
        AVPlayer(url: exampleVideoURL)
    }
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwiftUIVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideoView(url: exampleVideoURL)
    }
}
