//
//  MovieStore.swift
//  MoviesApp
//
//  Created by Anupam G on 20/05/22.
//

import Foundation
import SwiftUI

class MovieStore : ObservableObject {
    @Published var movies : [Movie]? = [Movie]()
    func getAllMovie(){
        guard let movieUrl = URL(string: "https://www.omdbapi.com/?s=kasam&page=1&apikey=bc4bf1ba") else{ return}
        
        
        URLSession.shared.dataTask(with: movieUrl) { data, response, error in
            guard let data = data ,error == nil else{return}
            
            let moviesResponse = try? JSONDecoder().decode(MovieResponse.self, from: data)
            
            if let moviesResponse = moviesResponse{
                DispatchQueue.main.async {
                    self.movies = moviesResponse.movies
                }
            }
        
        }.resume()
    }
}
