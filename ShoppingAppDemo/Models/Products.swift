//
//  Products.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 03/10/2024.
//

import Foundation

struct AppleProduct: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

struct MacMenu: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var menuItem = [MacMenu(name: "americanoCafe", image: "americanoCafe", price: 19),
                MacMenu(name: "Airpods Pro 2", image: "bigmac", price: 15),
                MacMenu(name: "Mackbook Air 13", image: "BIgMac-Meal", price: 11),
                MacMenu(name: "Cappuccino", image: "Cappuccino", price: 9),
                MacMenu(name: "Caramel", image: "Caramel", price: 10),
                MacMenu(name: "CocaCola", image: "Coca-cola", price: 10),
                MacMenu(name: "Croissant", image: "croissant", price: 22),
                MacMenu(name: "Double Cheese", image: "doubleCheese", price: 16),
                MacMenu(name: "Donut", image: "donut", price: 7),
                MacMenu(name: "Fanta", image: "fanta", price: 12),
                MacMenu(name: "Fries", image: "fries", price: 4),
                MacMenu(name: "Grilled Chicken Snack Wrap Spicy", image: "Grilled Chicken Snack Wrap Spicy", price: 14),
                MacMenu(name: "Grand Chicken", image: "grandChicken", price: 17)
                  ]

var productList = [AppleProduct(name: "Airpods Max", image: "AirpodsMax", price: 2099),
                   AppleProduct(name: "Airpods Pro 2", image: "airpodsPro-2case", price: 2099),
                   AppleProduct(name: "Mackbook Air 13", image: "mba13-midnight", price: 2099),
                   AppleProduct(name: "Mackbook Air 15", image: "mba15-silver-open", price: 2099),
                   AppleProduct(name: "Mackbook Pro", image: "14-spcgry", price: 2099),
                   AppleProduct(name: "Apple Watch", image: "appleWatch", price: 1599),
                   AppleProduct(name: "Apple Watch Ultra", image: "watchHermes-ultra", price: 2099),
                   AppleProduct(name: "Apple Watch S10", image: "APW", price: 2099),
                   AppleProduct(name: "Apple Watch S10", image: "watch40-s10B", price: 2099)
                  ]
