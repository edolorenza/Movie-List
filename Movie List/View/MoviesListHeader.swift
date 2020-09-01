//
//  MoviesListHeader.swift
//  Movie List
//
//  Created by Edo Lorenza on 01/09/20.
//  Copyright © 2020 Edo Lorenza. All rights reserved.
//

import SwiftUI

struct MoviesListHeader: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image(systemName: "largecircle.fill.circle")
                Text("News").bold()
                Image(systemName : "plus")
                Spacer()
            }
            .foregroundColor(.black)
            .font(.largeTitle)
            
            Text("Top Headlines")
                .foregroundColor(.gray)
                .font(.largeTitle)
        }.padding(.horizontal)
            .padding(.vertical, 10)
    }
}

struct MoviesListHeader_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListHeader()
    }
}
