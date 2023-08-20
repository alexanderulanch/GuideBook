//
//  City.swift
//  Guide Book
//
//  Created by Alex Ulanch on 8/19/23.
//

import Foundation

struct City: Identifiable, Codable {
    let id = UUID ()
    var name: String
    var summary: String
    var imageName: String
    var attractions: [Attraction]
}
