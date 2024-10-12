//
//  McDonaldView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 04/10/2024.
//

import SwiftUI

struct McDonaldView: View {
    var rows = [GridItem(.flexible(minimum: 410), spacing: 10)]
    @StateObject var cartManager = CartManager()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 20) {
                        ForEach(menuItem, id: \.id) { Product in
                            FoodProductCard(product: Product)
                        }
                    }
                    .padding(.horizontal)
                }
                .navigationTitle("MacDonald's")
                .toolbar {
                    NavigationLink(destination: CartView().environmentObject(cartManager)) {
                        CartButton(numberOfItems: cartManager.appleProducts.count)
                    }
                }
            }
        }
    }
}

#Preview {
    McDonaldView()
}
