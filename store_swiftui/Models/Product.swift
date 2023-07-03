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
    var width: String
    var height: String
    var diameter: String
}


var productList = [
    Product(name: "Leather Couch", image: "img10", description: "A leather couch is a luxurious and stylish seating option for any living space. With its sleek and timeless design, t adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of th eather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort, and durability.", supplier: "IKEA", price: 399,width: "200 cm",height: "135 cm",diameter: "102 cm"),
    Product(name: "Nice Chair", image: "img7", description: "Durable mohogany timber", supplier: "Walmart", price: 399,width: "200 cm",height: "135 cm",diameter: "102 cm"),
    Product(name: "Nice Cardboards", image: "img6", description: "A leather couch is a luxurious and stylish seating option for any living space. With its sleek and timeless design, t adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of th eather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort, and durability.", supplier: "OK", price: 399,width: "200 cm",height: "135 cm",diameter: "102 cm"),
    Product(name: "Kitchen Lights", image: "img5", description: "A leather couch is a luxurious and stylish seating option for any living space. With its sleek and timeless design, t adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of th eather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort, and durability.", supplier: "TV/Sales", price: 399,width: "200 cm",height: "135 cm",diameter: "102 cm"),
    Product(name: "Leather Couch", image: "img5", description: "A leather couch is a luxurious and stylish seating option for any living space. With its sleek and timeless design, t adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of th eather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort, and durability.", supplier: "Teacherz", price: 399,width: "200 cm",height: "135 cm",diameter: "102 cm"),
]
