//
//  RatingsSizesDetailView.swift
//  Tochdown
//
//  Created by Egor Molchanov on 10.08.2022.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // Mark: - Property
    
    @State private var rating: Int = 1
    @State private var sizeNumber: String = "S"
  
    let sizes: [String] = ["XS" ,"S", "M", "L", "XL"]
    
    // Mark: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // Ratings
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { number in
                        Button(action: {
                            //
                        }) {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 1)
                                )
                                .onTapGesture {
                                    self.rating = number + 1
                                }
                                .foregroundColor(number < self.rating ? Color.yellow : colorGray)
                        }
                    }
                }//: HStack
            }//: VStack
            
            Spacer()
            
            // Sizes
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {
                            //
                        }){
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .onTapGesture {
                                    sizeNumber = size
                                }
                                .foregroundColor(sizeNumber == size ? Color.black : colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(sizeNumber == size ? Color.black : colorGray, lineWidth: 2)
                                )
                        }//: Button
                    }//: ForEach
                }//: HStack
            }//: VStack
        }//: HStack
    }
}



// Mark: - Preview
struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
