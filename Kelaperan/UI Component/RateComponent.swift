//
//  RateComponent.swift
//  Kelaperan
//
//  Created by Andika on 10/31/20.
//  Copyright © 2020 Muhammad Rizki Andika. All rights reserved.
//

import SwiftUI

struct RateComponent: View {
    var rate: String
    var maxRate: Int = 5
    
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .frame(width: 16.0, height: 16.0)
            
            Text(rate)
                .font(.system(size: 14))
                .bold()
        }
        .foregroundColor(Color(UIColor.systemYellow))
    }
}

struct RateComponent_Previews: PreviewProvider {
    static var previews: some View {
        RateComponent(rate: "4.1")
    }
}
