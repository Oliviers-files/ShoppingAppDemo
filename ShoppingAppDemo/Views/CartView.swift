//
//  CartView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 04/10/2024.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ScrollView {
            Text("Your cart is empty.")
        }
        .navigationTitle("My Cart")
    }
}

#Preview {
    CartView()
}
