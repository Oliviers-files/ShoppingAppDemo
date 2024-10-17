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
    var look: String
    var look2: String
    var look3: String
    var look4: String
    
}

struct MacMenu: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var menuItem = [MacMenu(name: "AmericanoCafe", image: "americanoCafe", price: 19),
                MacMenu(name: "BigMac", image: "bigmac", price: 15),
                MacMenu(name: "BogMac Super", image: "BIgMac-Meal", price: 11),
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

var productList = [AppleProduct(name: "Airpods Max", image: "AirpodsMax", price: 2099, look: "AMc2", look2: "AMc3", look3: "AMc5", look4: "AMc6"),
                                      AppleProduct(name: "Airpods Pro 2", image: "airpodsPro-2case", price: 1099, look: "AP1", look2: "apcase", look3: "apcase2", look4: "head"),
                                      AppleProduct(name: "Mackbook Air 13", image: "mba13-midnight", price: 3099, look: "maci3", look2: "maci2", look3: "macacc", look4: ""),
                                      AppleProduct(name: "Mackbook Air 15", image: "mba15-silver-open", price: 3599, look: "maci2", look2: "maci3", look3: "", look4: ""),
                                      AppleProduct(name: "Mackbook Pro", image: "mbp14", price: 4099, look: "", look2: "", look3: "", look4: ""),
                                      AppleProduct(name: "apws10", image: "appleWatch", price: 2599, look: "s10-case", look2: "", look3: "s10-band-select", look4: ""),
                                      AppleProduct(name: "Apple Watch Ultra", image: "watchHermes-ultra", price: 2699, look: "ultra2", look2: "ultra3", look3: "ultra4", look4: "ultra5"),
                                      AppleProduct(name: "Apple Watch S10", image: "watch40-s10B", price: 1249, look: "", look2: "", look3: "", look4: "")
                                     ]
