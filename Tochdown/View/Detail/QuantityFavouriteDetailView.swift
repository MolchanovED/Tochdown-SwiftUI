//
//  QuantityFavouriteDetailView.swift
//  Tochdown
//
//  Created by Egor Molchanov on 10.08.2022.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // Mark: - Property
    
    @State private var counter: Int = 0
    
    // Mark: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }) {
                Image(systemName: "minus.circle")
            }//: Button
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }) {
                Image(systemName: "plus.circle")
            }//: Button
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }) {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        }//: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}


// Mark: - Preview
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
