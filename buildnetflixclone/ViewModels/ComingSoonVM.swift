//
//  ComingSoonVM.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 12/3/20.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}

