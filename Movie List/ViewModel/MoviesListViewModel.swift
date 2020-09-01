//
//  MoviesListViewModel.swift
//  Movie List
//
//  Created by Edo Lorenza on 01/09/20.
//  Copyright © 2020 Edo Lorenza. All rights reserved.
//

import Foundation

class MoviesListViewModel: ObservableObject {
    @Published var movies = [MoviesViewModel]()
    @Published var imageData = [String: Data]()
    
    func load() {
        getMovies()
    }
    
    private func getMovies() {
        let networkManager = NetworkManager()
        networkManager.getMovies { (Result) in
            guard let movies = Result else {return}
            
            let moviesVM = movies.map(MoviesViewModel.init)
            self.getImage(for: moviesVM)
            DispatchQueue.main.async {
                self.movies = moviesVM
            }
        }
    }
    
    private func getImage(for movies: [MoviesViewModel]) {
        let nm = NetworkManager()
        movies.forEach { n in
            guard !n.poster_path.isEmpty else { return }
            
            nm.getImage(urlString: n.poster_path) { (data)  in
                guard let data = data else { return }
                
                DispatchQueue.main.async {
                    self.imageData[n.poster_path] = data
                }
            }
        }
    }
}
