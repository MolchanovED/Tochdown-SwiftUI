//
//  NavigationBarDetailView.swift
//  Tochdown
//
//  Created by Egor Molchanov on 10.08.2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // Mark: - Property
    
    @EnvironmentObject var shop: Shop
    
    // Mark: - Body
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button(action: {
                //
            }) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }//: HStack
    }
}


// Mark: - Preview
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
