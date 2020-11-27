//
//  TopMoviePreview.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/27/20.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie:Movie
    
    func isLastCategory(_ cat:String)-> Bool{
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: cat) {
            return index == catCount - 1
        }
        return true
    }
    var body: some View {
        ZStack{
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack{
                Spacer()
                HStack{
                    ForEach(movie.categories, id: \.self){category in
                        Text(category)
                            .font(.footnote)
                        if !isLastCategory(category){
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                        }
                    }
                }
                HStack{
                    Text("My List")
                    Text("Play button")
                    Text("Info button")
                }
                
            }
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie:exampleMovie1)
    }
}
