//
//  MoviesDetailView.swift
//  MoviesAppSwift-SwiftUI
//
//  Created by Anupam G on 27/05/22.
//

import SwiftUI

struct MoviesDetailView: View {
    
    let movie : Movie
    let movies : [Movie]
    
    @State var selected :Bool = false
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                HStack{
                    Spacer()
                    StarViewRepresenation(selected: $selected)
                        .frame(width: 35, height: 35)
                        .padding()
                }
                URLImage(url:movie.poster,placeholder: movie.title)
                    .frame(width: 400, height: 600)
                Text(movie.title)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
        }
        
//        List(movies,id:\.self){ m in
//            URLImage(url: m.poster).aspectRatio(contentMode: .fit)
//        }
        
    }
}

struct MoviesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesDetailView(movie: Movie(title: "Batman", imdbID: "4", poster: "https://m.media-amazon.com/images/M/MV5BMTQ3ZTJkYjItNTRhOC00ZjQ2LTgxMzgtZjE3NDY0NTlhYjcxXkEyXkFqcGdeQXVyOTA3MTM0MTM@._V1_SX300.jpg"),movies:[Movie(title: "", imdbID: "", poster: "")])
    }
}
