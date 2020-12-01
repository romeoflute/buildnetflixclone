//
//  HomeVM.swift
//  buildnetflixclone
//
//  Created by Romeo Flauta on 11/25/20.
//

import Foundation

class HomeVM: ObservableObject {
    //String == Category
    @Published var movies: [String:[Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map{String($0)}
    }
    
    func getMovies(forCategory cat: String, andHomeRow homeRow: HomeTopRow) -> [Movie]{
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({ $0.movieType == .movie })
        case .tvShows:
            return (movies[cat] ?? []).filter({ $0.movieType == .tvShow })
        case .myList:
            // TODO: Setup MyList
            return movies[cat] ?? []
        }
    }
    
    init(){
        setupMovies()
    }
    
    func setupMovies(){
        movies["Trending Now"] = exampleMovies
        movies["Stand-up Commedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-fi"] = exampleMovies.shuffled()
    }
}
