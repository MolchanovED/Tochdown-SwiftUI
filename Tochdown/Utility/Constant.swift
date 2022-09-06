//
//  Constant.swift
//  Tochdown
//
//  Created by Egor Molchanov on 07.08.2022.
//

import SwiftUI

// Data

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

let sampleProduct: Product = products[0]

// Color

let colorBackgound : Color = Color("ColorBackground")
let colorGray: Color = Color(uiColor: .systemGray4)

// Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// Ux
let feedback = UIImpactFeedbackGenerator(style: .medium)
// Api

// Image

// Font

// String

// Misc


// Gesture

var gesture: some Gesture {
    return DragGesture(minimumDistance: 0, coordinateSpace: .local)
        .onChanged({ val in
            
        })
}
