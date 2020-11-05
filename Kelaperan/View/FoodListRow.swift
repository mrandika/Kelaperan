//
//  FoodListRow.swift
//  Kelaperan
//
//  Created by Andika on 10/30/20.
//  Copyright © 2020 Muhammad Rizki Andika. All rights reserved.
//

import SwiftUI

struct FoodListRow: View {
    var foodData: Food
    
    var body: some View {
        HStack {
            Image(foodData.image)
                .resizable()
                .scaledToFill()
                .frame(width: 94, height: 94)
                .cornerRadius(8.0)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(foodData.name)
                    .font(.system(size: 18))
                    .bold()
                    
                    Spacer()
                    
                    RateComponent(rate: String(format: "%.1f", foodData.rating))
                }
                
                Text(foodData.origin)
                    .font(.system(size: 12))
                    .foregroundColor(Color(UIColor.systemGray))
               
                Text(foodData.description)
                    .font(.system(size: 12))
                    .lineLimit(3)
                    .padding(.top, 8)
            }
        }
    }
}

struct FoodListRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodListRow(foodData: foodItems[0])
    }
}
