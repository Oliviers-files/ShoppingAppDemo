//
//  McDonaldView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 04/10/2024.
//

import SwiftUI

struct McDonaldView: View {
    var rows = [GridItem(.flexible(minimum: 410), spacing: 10)]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("McDonald's" + "  >")
                .font(.title)
                .bold()
                .padding(.horizontal)
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 20) {
                    ForEach(menuItem, id: \.id) { Product in
                        FoodProductCard(product: Product)
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 720) // Fixed height for the grid
            .navigationTitle("McDonald")
        }
    }
}

#Preview {
    McDonaldView()
}
