//
//  Trailer.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/29/20.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id:String = UUID().uuidString
    var name:String
    var videoURL:URL
    var thumbnailImageURL:URL
}
