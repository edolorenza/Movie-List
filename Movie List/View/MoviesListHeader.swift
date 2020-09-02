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
                Text("Movies List").bold()
                Spacer()
            }
            .foregroundColor(.black)
            .font(.largeTitle)
            
            Text("Popular Movies")
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
