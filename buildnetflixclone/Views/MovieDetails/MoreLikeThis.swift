//
//  MoreLikeThis.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/29/20.
//

import SwiftUI

struct MoreLikeThis: View {
    var movies: [Movie]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns){
                ForEach(0..<movies.count){ index in
                    StandardHomeView(movie: movies[index])
                }
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
