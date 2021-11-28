//
//  ViewController.swift
//  H.W 2.10. NetworkRquests
//
//  Created by Ирина on 27.11.2021.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Public Properties
    let urlString =  "https:thatcopy.github.io/catAPI/imgs/jpg/84f477e.jpg"
}

//MARK: - Extensions
extension ViewController {
    private func catsImageButton() {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let cat = try JSONDecoder().decode(Cat.self, from: data)
                
                print(cat)
            } catch let error {
                
                print(error.localizedDescription)
            }
            
        }.resume()
    }
}






