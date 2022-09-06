//
//  TopPartDetailView.swift
//  Tochdown
//
//  Created by Egor Molchanov on 10.08.2022.
//

import SwiftUI

struct TopPartDetailView: View {
    // Mark: - Property
    
    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    
    // Mark: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // Price
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // Photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
    
        }//: HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

// Mark: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
