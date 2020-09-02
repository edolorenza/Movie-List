//
//  MoviesCell.swift
//  Movie List
//
//  Created by Edo Lorenza on 01/09/20.
//  Copyright © 2020 Edo Lorenza. All rights reserved.
//

import SwiftUI

struct MoviesCell: View {
    
    let movies: MoviesViewModel
    let image: Image
    
    @State private var isPresented: Bool = false
    
    var convertedFigure: Double {
        
        let convertedValueRaw: Double = movies.voteAverage
        return convertedValueRaw
    }
    
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var releaseDate = Date()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack (alignment: .top, spacing: 10){
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 250, alignment: .center)
                    .clipped()
                    .cornerRadius(20)
                    .shadow(color: . black, radius: 5, x: 5, y:5)
                
                VStack (alignment: .leading, spacing: 5){
                    Text(movies.title)
                        .font(.headline)
                        .padding(10)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                    
                    
                    Text("\(movies.releaseDate, formatter: Self.taskDateFormat)")
                        .font(.subheadline)
                        .padding(10)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                    
                    
                    Text(String(convertedFigure))
                        .font(.subheadline)
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
            }
            
            Text(movies.overview)
                .font(.subheadline)
                .foregroundColor(.black)
            
        }
    }
}
