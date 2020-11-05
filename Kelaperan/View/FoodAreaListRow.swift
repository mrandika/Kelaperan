//
//  FoodAreaListRow.swift
//  Kelaperan
//
//  Created by Andika on 10/31/20.
//  Copyright © 2020 Muhammad Rizki Andika. All rights reserved.
//

import SwiftUI

struct FoodAreaListRow: View {
    var cityData: City
    
    var body: some View {
        VStack {
            Image(cityData.image)
                .resizable()
                .clipShape(Circle())
                .padding(.bottom, 12.0)
                .frame(width: 94, height: 94)
            
            Text(cityData.name)
                .font(.system(size: 14))
                .bold()
        }
    }
}

struct FoodAreaListRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodAreaListRow(cityData: cityItems[0])
    }
}
