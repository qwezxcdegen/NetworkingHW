//
//  ViewController.swift
//  NetworkingHW
//
//  Created by Степан Фоминцев on 06.05.2023.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - Private Properties
    private let url = "https://api.opendota.com/api/heroes"
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchHeroes()
    }
    
    // MARK: - Private Methods
    private func fetchHeroes() {
        guard let url = URL(string: url) else {
            print("Url is invalid")
            return
        }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let heroes = try decoder.decode(Heroes.self, from: data)
                print(heroes)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}

