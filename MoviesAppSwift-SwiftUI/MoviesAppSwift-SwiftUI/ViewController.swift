//
//  ViewController.swift
//  MoviesAppSwift-SwiftUI
//
//  Created by Anupam G on 27/05/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var moviesTableView: UITableView!
    
    var movies : [Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Movies List"
        MovieStore().getAllMovie { [weak self] moviesFromServer in
            if let moviesFromServer = moviesFromServer {
                self?.movies = moviesFromServer
                self?.moviesTableView.reloadData()
            }
        }
    }
    @IBSegueAction func showDetails(_ coder: NSCoder) -> UIViewController? {
        guard let indexPath = self.moviesTableView.indexPathForSelectedRow else{
            fatalError()
        }
        let moviesDetail = MoviesDetailView(movie: movies[indexPath.row],movies: movies)
        return UIHostingController(coder: coder, rootView: moviesDetail)
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? MoviesTableViewCell else{return UITableViewCell()}
        cell.moviesTitleLabel.text = movies[indexPath.row].title
        cell.movieImageView.imageWithUrl(urlString: movies[indexPath.row].poster)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
}


class MoviesTableViewCell : UITableViewCell{
    
    @IBOutlet weak var moviesTitleLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
}

extension UIImageView {
    
    public func imageWithUrl(urlString:String){
        guard let url = URL(string: urlString) else {return}
        let urlSession = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data , error == nil else {
                return
            }
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }
        urlSession.resume()
    }
}
