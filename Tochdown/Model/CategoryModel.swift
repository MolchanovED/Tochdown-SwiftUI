//
//  CategoryModel.swift
//  Tochdown
//
//  Created by Egor Molchanov on 09.08.2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
