//
//  HeaderDatailView.swift
//  Tochdown
//
//  Created by Egor Molchanov on 10.08.2022.
//

import SwiftUI

struct HeaderDatailView: View {
    // Mark: - Property
    
    @EnvironmentObject var shop: Shop
    @State private var isAnimated: Bool = false
    
    // Mark: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }//: VStack
        .foregroundColor(.white)
        .offset(x: isAnimated ? 0 : -50)
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimated.toggle()
            }
        }
    }
}


// Mark: - Preview
struct HeaderDatailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDatailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
