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
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            image
            .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 30, height: 200, alignment: .center)
            .clipped()
            .cornerRadius(20)
                .shadow(color: . black, radius: 5, x: 5, y:5)
            
            Text(movies.title)
                .font(.subheadline)
            .padding(10)
                .foregroundColor(.white)
                .background(Color.gray)
            .cornerRadius(10)
            
            Text(movies.overview)
                .font(.subheadline)
                .foregroundColor(.black)
        
        }
    }
}
