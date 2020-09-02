//
//  MoviesViewModel.swift
//  Movie List
//
//  Created by Edo Lorenza on 01/09/20.
//  Copyright © 2020 Edo Lorenza. All rights reserved.
//

import Foundation

struct MoviesViewModel {
    let movies: Movies
    
    var title: String {
        return movies.title
    }
    
    var overview: String {
        return movies.overview
    }
    
    var poster_path: String {
        return movies.posterPath
    }
    
    var voteAverage: Double{
        return movies.voteAverage
    }
    
    var releaseDate: Date {
        return movies.releaseDate
    }
}
