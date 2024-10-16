//
//  ItemView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 03/10/2024.
//

import SwiftUI

struct ItemView: View {
    @StateObject var cartManager = CartManager()
    
    var rows = [GridItem(.flexible(minimum: 410), spacing: 10)]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                // First LazyHGrid with a fixed height for the ScrollView
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 20) {
                        
                        ForEach(productList, id: \.id) { Product in
                            AppleProductCard(product: Product)
                                .environmentObject(cartManager)
                        }
                    }
                    .padding(.horizontal)
                }
                //.frame(height: 690) // Fixed height for the grid
            }
            .navigationTitle("Apple Products")
            .toolbar {
                NavigationLink(destination: CartView().environmentObject(cartManager)) {
                    CartButton(numberOfItems: cartManager.appleProducts.count)
                }
            }
        }
    }
}

#Preview {
    ItemView()
}
