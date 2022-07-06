//
//  MoviesResponse.swift
//  MoviesAppSwift-SwiftUI
//
//  Created by Anupam G on 27/05/22.
//

import Foundation
struct MovieResponse : Decodable {
    let movies : [Movie]
    
    private enum CodingKeys : String, CodingKey {
        case movies = "Search"
    }
}
struct Movie : Decodable,Hashable {
    let title : String
    let imdbID : String
    let poster : String
//    let type: String
//    let Title : String
//    let year : String

    private enum CodingKeys : String, CodingKey {
        case title = "Title"
        case poster = "Poster"
        case imdbID
        ////        case year = "Year"
        ////        case type = "Type"

    }
}

/*
struct MovieResponse: Decodable {
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}

struct Movie: Decodable {
    let imdbID: String
    let title: String
    let poster: String
    
    private enum CodingKeys: String, CodingKey {
        case imdbID
        case title = "Title"
        case poster = "Poster"
    }
}
*/

