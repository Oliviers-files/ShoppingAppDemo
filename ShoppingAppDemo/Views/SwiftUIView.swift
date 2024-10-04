//
//  SwiftUIView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 04/10/2024.
//

import SwiftUI

struct SwiftUIView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        ScrollView {
            ZStack {
                VStack(alignment: .leading, spacing: 10) {
                    // First LazyHGrid with a fixed height for the ScrollView
                   // VStack(alignment: .leading) {
                        ScrollView(.horizontal) {
                            LazyHGrid(rows: columns, spacing: 20) {
                                ForEach(productList, id: \.id) { Product in
                                    AppleProductCard(product: Product)
                                        ///.padding(.vertical)
                                }
                                
                            }
                            .padding(.horizontal)
                            
                        }
                        .frame(height: 850) // Fixed height for the grid
                        .padding(.vertical)
                        .navigationTitle("ht")
                    //}
                    
                    // Second LazyHGrid with a fixed height for the ScrollView
                    VStack(alignment: .leading) {
                        Text("Second Grid Title")
                            .font(.title)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            LazyHGrid(rows: columns, spacing: 20) {
                                ForEach(menuItem, id: \.id) { Product in
                                    FoodProductCard(product: Product)
                                }
                            }
                            .padding(.horizontal)
                        }
                        .frame(height: 720) // Fixed height for the grid
                    }
                }
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    NavigationView {
        SwiftUIView()
    }
}


// Second LazyHGrid with a fixed height for the ScrollView
/*  VStack(alignment: .leading) {
    Text("McDonald's" + "  >")
        .font(.title)
        .bold()
        .padding(.horizontal)
    
    ScrollView(.horizontal) {
        LazyHGrid(rows: columns, spacing: 20) {
            ForEach(menuItem, id: \.id) { Product in
                FoodProductCard(product: Product)
            }
        }
        .padding(.horizontal)
    }
    .frame(height: 720) // Fixed height for the grid
    .navigationTitle("McDonald")
}*/
