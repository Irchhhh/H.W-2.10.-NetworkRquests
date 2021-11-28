//
//  dogFactsCell.swift
//  H.W 2.10. NetworkRquests
//
//  Created by Ирина on 28.11.2021.
//

import UIKit

class DogFactsCell: UITableViewCell {

    @IBOutlet weak var factsLabel: UILabel!
    
    func configure(with dogFacts: DogFacts) {
        factsLabel.text = "\(String(describing: dogFacts.facts))"
        
        DispatchQueue.global().async {
            guard let stringURL = dogFacts.facts else { return }
            guard URL(string: stringURL) != nil else { return }


    }
   
    }
}
