//
//  DogFactsTableViewController.swift
//  H.W 2.10. NetworkRquests
//
//  Created by Ирина on 27.11.2021.
//

import UIKit

class CatsImageTableViewController: UITableViewController {
    let networkManager = NetworkManager()
    
    //MARK: - Override Metods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        dogFacts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dogs", for: indexPath) as! DogFactsCell
        let fact = dogFacts[indexPath.row]
        cell.configure(with: fact)
    

        return cell
    }
}




    

