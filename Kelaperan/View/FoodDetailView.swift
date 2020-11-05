//
//  FoodDetailView.swift
//  Kelaperan
//
//  Created by Andika on 10/30/20.
//  Copyright © 2020 Muhammad Rizki Andika. All rights reserved.
//

import SwiftUI

struct FoodDetailView: View {
    var foodData: Food
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(foodData.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8.0)
                
                HStack {
                     Text(foodData.name)
                     .bold()
                     
                     Spacer()
                     
                     RateComponent(rate: String(format: "%.1f", foodData.rating))
                 }
                 
                 Text(foodData.origin)
                    .font(.system(size: 12))
                    .foregroundColor(Color(UIColor.systemGray))
                
                Divider()
                
                Group {
                    Text("Galeri").bold()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(1...foodData.numOfGalleryImage, id: \.self) { imageIndex in
                                Image("Gallery_\(self.foodData.image)_\(imageIndex)")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 320, height: 192)
                                    .cornerRadius(8)
                            }
                        }
                    }
                }
                
                Divider()
                
                Text("Deskripsi").bold()
                
                Text(foodData.description)
                    .font(.system(size: 14))
                    .padding(.top, 6)
                    .padding(.bottom, 6)
                
                Divider()
                
                Group {
                    Text("Sering Dijumpai di Daerah").bold()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(cityItems) { city in
                                FoodAreaListRow(cityData: city)
                            }
                        }
                    }
                }
            }.padding()
        }
        .navigationBarTitle(Text(foodData.name), displayMode: .inline)
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView(foodData: foodItems[0])
    }
}
