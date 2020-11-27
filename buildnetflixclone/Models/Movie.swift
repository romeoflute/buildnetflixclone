//
//  Movie.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/25/20.
//

import Foundation

struct Movie: Identifiable {
    var id:String
    var name:String
    var thumbnailURL:URL
    
    var categories:[String]
}
