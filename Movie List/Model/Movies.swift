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
    let poster_path: String
}
