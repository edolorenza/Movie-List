//
//  NetworkManager.swift
//  Movie List
//
//  Created by Edo Lorenza on 31/08/20.
//  Copyright © 2020 Edo Lorenza. All rights reserved.
//

import Foundation

class NetworkManager {
    private let baseUrlString = "https://api.themoviedb.org/3/movie/popular?"
    private let  language = "language=en-US"
    
    func getMovies(completion: @escaping(([Movies]?) -> Void)) {
        let urlString = "\(baseUrlString)\(language)&apikey=\(API.key)"
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, respone, error) in
            guard error == nil, let data = data else {
                completion(nil)
                return
            }
            let moviesResult = try? JSONDecoder().decode(Results.self, from: data)
            moviesResult == nil ? completion(nil) : completion (moviesResult!.results)
        }.resume()
    }
    func getImage(urlString: String, completion: @escaping (Data?) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url) { (data, respone, error) in
            guard error == nil, let data = data else{
                completion(nil)
                return
            }
            completion(data)
        }.resume()
    }
}
