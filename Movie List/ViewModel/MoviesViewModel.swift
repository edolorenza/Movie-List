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
        return movies.title ?? "unknown"
    }
    
    var overview: String {
        return movies.overview ?? " "
    }
    
    var poster_path: String {
        return movies.poster_path ?? "https://image.tmdb.org/t/p/w500/TnOeov4w0sTtV2gqICqIxVi74V.jpg"
    }
}
