//
//  AddToCartDetailView.swift
//  Tochdown
//
//  Created by Egor Molchanov on 10.08.2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    // Mark: - Property
    
    @EnvironmentObject var shop: Shop
    
    
    // Mark: - Body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }) {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }//: Button
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

// Mark: - Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
