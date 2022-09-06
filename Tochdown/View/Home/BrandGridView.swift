//
//  BrandGridView.swift
//  Tochdown
//
//  Created by Egor Molchanov on 10.08.2022.
//

import SwiftUI

struct BrandGridView: View {
    // Mark: - Property
    
    // Mark: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }//: Grid
            .frame(height: 200)
            .padding(15)
        }//: Scroll
    }
}

// Mark: - Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackgound)
    }
}
