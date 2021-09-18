//
//  Landmark.swift
//  Landmarks
//
//  Created by Vid Čufar on 18/09/2021.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
