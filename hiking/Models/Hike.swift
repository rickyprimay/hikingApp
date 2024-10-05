//
//  Hike.swift
//  hiking
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
