//
//  CatsCollectionViewController.swift
//  H.W 2.10. NetworkRquests
//
//  Created by Ирина on 28.11.2021.
//

import UIKit



class CatsCollectionViewController: UICollectionViewController {

    let cats: [CatsImage] = []
    @IBOutlet weak var imageUrl: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        private func fetchImage() {
            guard let url = URL(string: url else { return }
            
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

    
    // MARK: - Navigation

   
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    

}
