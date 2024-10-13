//
//  CartView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 04/10/2024.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    
    var body: some View {
        ScrollView {
            if cartManager.appleProducts.count > 0 {
                ForEach(cartManager.appleProducts, id: \.id) { product in
                    CartProductRow(product: product)
                }
        Divider()
        VStack (alignment: .leading){
            HStack {
                Text("Bag Subtotal")
                    .bold()
                    .font(.system(size: 25))
                Spacer()
                Text("AED \(cartManager.totalPrice)")
            }
            HStack {
                Text("Includes VAT of")
                    .bold()
                Spacer()
                Text("AED 235")
            }
            
            Text("Your Bag qualifies for free shipping")
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .padding()
        Divider()
                
           /* Official apple Payment button :
            ApplePaymentButton(action: {}) */
                
                PaymentButton()
                    
                
            } else {
                Text("Your cart is empty.")
            }
        }
        .navigationTitle("My Cart")
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
