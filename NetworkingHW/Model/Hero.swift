//
//  Hero.swift
//  NetworkingHW
//
//  Created by Степан Фоминцев on 06.05.2023.
//

import Foundation

struct Hero: Decodable {
    let id: Int
    let name: String
    let localized_name: String
    let primary_attr: String
    let attack_type: String
    let roles: [String]
    let legs: Int
}

typealias Heroes = [Hero]
