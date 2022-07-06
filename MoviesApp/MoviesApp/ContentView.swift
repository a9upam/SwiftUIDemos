//
//  ContentView.swift
//  MoviesApp
//
//  Created by Anupam G on 20/05/22.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var store : MovieStore
    
    let gridColumn : [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        NavigationView{
        ScrollView{
            LazyVGrid(columns: gridColumn, content: {
                ForEach(store.movies ?? [Movie](), id: \.imdbID){ movie in
                    
                    VStack{
                        URLImage(url: movie.poster)
                            .frame(width: 100, height: 150, alignment: .center)
                        Text(movie.title)
                            .frame(maxWidth: .infinity,  alignment: .top)
                    }
                }
            })
        }
        .onAppear {
            store.getAllMovie()
        }
        .navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: MovieStore())
    }
}
