//
//  Shop.swift
//  Tochdown
//
//  Created by Egor Molchanov on 10.08.2022.
//

import Foundation

class Shop: ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: Product? = nil
}
