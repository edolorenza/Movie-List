//
//  MoviesListView.swift
//  Movie List
//
//  Created by Edo Lorenza on 01/09/20.
//  Copyright © 2020 Edo Lorenza. All rights reserved.
//

import SwiftUI

struct MoviesListView: View {
    let moviesCollection: [MoviesViewModel]
    let imageData: [String: Data]
    
    var body: some View {
        
        List(self.moviesCollection, id: \.title) {
            movies in
            MoviesCell(movies: movies, image: Image(uiImage: self.imageData[movies.poster_path] == nil ? UIImage(systemName: "doc.append")! : UIImage(data:self.imageData[movies.poster_path]!)!))
            
        }
    }
}

