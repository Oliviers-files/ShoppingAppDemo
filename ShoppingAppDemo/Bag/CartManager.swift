//
//  CartManager.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 05/10/2024.
//

import Foundation
        
// so the changes can be updated to the Cart UI

class CartManager: ObservableObject {
    @Published private(set) var appleProducts : [AppleProduct] = []
    @Published private(set) var macProducts : [MacMenu] = []
    @Published private(set) var f21Products : [F21Sweater] = []
    @Published private(set) var totalPrice : Int = 0
    @Published private(set) var totalPrice2 : Int = 0
    @Published private(set) var totalPrice3 : Int = 0
    
    func addToCart(product: AppleProduct) {
        appleProducts.append(product)
        totalPrice += product.price
    }
    
    func addToCart(product: MacMenu) {
        macProducts.append(product)
        totalPrice2 += product.price
    }
    
    func addToCart(product: F21Sweater) {
        f21Products.append(product)
        totalPrice3 += product.price
    }
    
    func removeFromCart(product: AppleProduct) {
        appleProducts = appleProducts.filter { $0.id != product.id }
        totalPrice -= product.price
    }
    
    func removeFromCart(product: MacMenu) {
        macProducts = macProducts.filter { $0.id != product.id }
        totalPrice -= product.price
    }
    
    func removeFromCart(product: F21Sweater) {
        f21Products = f21Products.filter { $0.id != product.id }
        totalPrice -= product.price
    }
    
}
