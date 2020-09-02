//
//  Movies.swift
//  Movie List
//
//  Created by Edo Lorenza on 31/08/20.
//  Copyright © 2020 Edo Lorenza. All rights reserved.
//

import Foundation

struct Results: Decodable {
 let results: [Movies]
}

struct Movies: Decodable {
    let title: String
    let overview: String
    let posterPath: String
    let releaseDate: Date
    let genres: [Int]
    let voteAverage: Double
    
    
    enum CodingKeys: String, CodingKey {
        case popularity
        case posterPath = "poster_path"
        case title
        case genres = "genre_ids"
        case voteAverage = "vote_average"
        case overview
        case releaseDate = "release_date"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let path = try container.decode(String.self, forKey: .posterPath)
        
        let dateString = try container.decode(String.self, forKey: .releaseDate)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: dateString)!
        posterPath = "https://image.tmdb.org/t/p/w300\(path)"
        title = try container.decode(String.self, forKey: .title)
        genres = try container.decode([Int].self, forKey: .genres)
        voteAverage = try container.decode(Double.self, forKey: .voteAverage)
        overview = try container.decode(String.self, forKey: .overview)
        releaseDate = date
        
    }
}
