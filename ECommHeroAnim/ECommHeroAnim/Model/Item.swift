//
//  Item.swift
//  ECommHeroAnim
//
//  Created by Siddharth on 08/05/21.
//

import SwiftUI

//Item Model
struct Item: Identifiable{
    
    var id = UUID().uuidString
    var title: String
    var subTitle:String
    var price: String
    var rating: String
    var image: String
}

var Items = [
    Item(title: "Vincent Chase", subTitle: "Black Full Rim", price: "$ 36", rating: "3.8", image: "p1"),
    Item(title: "John Jacobs", subTitle: "Brown Tortoise", price: "$ 45", rating: "4.6", image: "p2"),
    Item(title: "Wood Black", subTitle: "Office Blue", price: "$ 89", rating: "4.8", image: "p3"),
    Item(title: "Vu Abstract", subTitle: "Fashion U", price: "$ 67", rating: "3.5", image: "p4")
    
]


