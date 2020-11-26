//
//  StandardHomeView.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/25/20.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeView: View {
    var movie:Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeView(movie: exampleMovie1)
    }
}
