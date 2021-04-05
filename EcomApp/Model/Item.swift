//
//  Item.swift
//  EcomApp
//
//  Created by Andy Lochan on 4/4/21.
//

import SwiftUI

// Item Model and Sample Data...
struct Item: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var subTitle: String
    var price: String
    var rating: String
    var image: String
}

// Note: Both image and color name are the same...
var items = [

    Item(title: "BMW M3", subTitle: "Marina Blue", price: "$49,000", rating: "4.5", image: "p1"),
    Item(title: "BMW M4", subTitle: "Pearl White", price: "$54,000", rating: "4.3", image: "p2"),
    Item(title: "BMW M4", subTitle: "Sans Yellow", price: "$62,000", rating: "4.2", image: "p3"),
    Item(title: "BMW 335i", subTitle: "Metallic Blue", price: "$31,000", rating: "3.9", image: "p4")
]
