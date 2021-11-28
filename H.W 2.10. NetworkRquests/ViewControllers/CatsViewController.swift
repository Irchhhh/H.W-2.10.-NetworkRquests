//
//  CatsViewController.swift
//  H.W 2.10. NetworkRquests
//
//  Created by Ирина on 28.11.2021.
//

import UIKit

class CatsViewController: UIViewController {
    //MARK: - @IBOutlets
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    //MARK: - Public Properties
    let urlString =  "https:thatcopy.github.io/catAPI/imgs/jpg/84f477e.jpg"
    
    //MARK: - Override Metods
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        fetchImage()
    }
    
    //MARK: - Private Metods
    
    private func fetchImage() {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, let response = response else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            print(response)
            guard let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self.imageView.image = image
                self.activityIndicator.stopAnimating()
            }
        }.resume()
    }
}




