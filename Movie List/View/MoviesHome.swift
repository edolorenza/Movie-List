//
//  MoviesHome.swift
//  Movie List
//
//  Created by Edo Lorenza on 01/09/20.
//  Copyright © 2020 Edo Lorenza. All rights reserved.
//

import SwiftUI

struct MoviesHome: View {
    @ObservedObject private var moviesListVM = MoviesListViewModel()
    
    init(){
        moviesListVM.load()
    }
    var body: some View {
        VStack{
            MoviesListHeader()
        }
    }
}

struct MoviesHome_Previews: PreviewProvider {
    static var previews: some View {
        MoviesHome()
    }
}
