//
//  TrailerList.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/29/20.
//

import SwiftUI

struct TrailerList: View {
    var trailers:[Trailer]
    let screen = UIScreen.main.bounds
    var body: some View {
        VStack(alignment:.leading){
            ForEach(trailers){trailer in
                VStack{
                    VideoPreviewImage(imageURL: trailer.thumbnailImageURL, videoURL: trailer.videoURL)
                        .frame(maxWidth: screen.width)
                    Text(trailer.name)
                        .font(.headline)
                }
                .foregroundColor(.white)
                .padding(.bottom, 10)
            }
        }
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            TrailerList(trailers: exampleTrailers)
        }
    }
}
