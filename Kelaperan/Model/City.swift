//
//  City.swift
//  Kelaperan
//
//  Created by Andika on 10/31/20.
//  Copyright © 2020 Muhammad Rizki Andika. All rights reserved.
//

import Foundation

struct City: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var image: String
}
