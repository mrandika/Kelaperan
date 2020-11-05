//
//  Food.swift
//  Kelaperan
//
//  Created by Andika on 10/30/20.
//  Copyright © 2020 Muhammad Rizki Andika. All rights reserved.
//

import Foundation

struct Food: Identifiable, Hashable {
    var id: String
    var image: String
    var numOfGalleryImage: Int
    var name: String
    var description: String
    var origin: String
    var rating: Double
}
