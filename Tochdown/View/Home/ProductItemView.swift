//
//  ProductItemView.swift
//  Tochdown
//
//  Created by Egor Molchanov on 10.08.2022.
//

import SwiftUI

struct ProductItemView: View {
    // Mark: - Property
    
    let product: Product
    
    // Mark: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
           // Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            // Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }//: VStack
    }
}


// Mark: - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackgound)
    }
}
