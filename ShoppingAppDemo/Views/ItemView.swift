//
//  ItemView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 03/10/2024.
//

import SwiftUI

struct ItemView: View {
    var rows = [GridItem(.adaptive(minimum: 410), spacing: 10)]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows , spacing: 1) {
                ForEach(productList, id: \.id) { Product in
                    ProductCard(product: Product)
                }
            }
            .padding(16)
        }
    }
}

#Preview {
    ItemView()
}
