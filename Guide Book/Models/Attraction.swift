//
//  Attraction.swift
//  Guide Book
//
//  Created by Alex Ulanch on 8/19/23.
//

import Foundation

struct Attraction: Identifiable, Codable {
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
}
