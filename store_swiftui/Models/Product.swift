//
//  Product.swift
//  store_swiftui
//
//  Created by Linval Muchapirei on 30/6/2023.
//

import Foundation

struct Product: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}


var productList = [
    Product(name: "Leather Couch", image: "img10", description: "", supplier: "IKEA", price: 399),
    Product(name: "Nice Chair", image: "img7", description: "", supplier: "Walmart", price: 399),
    Product(name: "Nice Cardboards", image: "img6", description: "", supplier: "OK", price: 399),
    Product(name: "Kitchen Lights", image: "img5", description: "", supplier: "TV/Sales", price: 399),
    Product(name: "Leather Couch", image: "img5", description: "", supplier: "Teacherz", price: 399),
]
