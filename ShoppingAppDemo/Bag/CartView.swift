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
        ZStack {
            ScrollView {
                if cartManager.macProducts.count < 0 && cartManager.f21Products.count < 0 && cartManager.appleProducts.count < 0 {
                    VStack {
                        Image(systemName: "basket")
                            .resizable()
                            .frame(width: 250,height: 250)
                            .padding()
                        
                        Text("Cart is empty")
                            .font(.system(size: 40))
                    }
                    .padding(.top, 170)
                }
                
                else {
                    if cartManager.appleProducts.count > 0 {
                        Text("Apple")
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                            .foregroundStyle(.gray)
                        
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
                    }
                    
                    if  cartManager.f21Products.count > 0 {
                        Text("Apple")
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                            .foregroundStyle(.gray)
                        
                        ForEach(cartManager.f21Products, id: \.id) { product in
                            SweaterCartRow(product: product)
                        }
                        Divider()
                        VStack (alignment: .leading){
                            HStack {
                                Text("Bag Subtotal")
                                    .bold()
                                    .font(.system(size: 25))
                                Spacer()
                                Text("AED \(cartManager.totalPrice3)")
                            }
                            HStack {
                                Text("Includes VAT of")
                                    .bold()
                                Spacer()
                                Text("AED 25")
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
                    }
                    
                    if  cartManager.macProducts.count > 0 {
                        Text("Apple")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                            .foregroundStyle(.gray)
                        
                        ForEach(cartManager.macProducts, id: \.id) { product in
                            FoodCartRow(product: product)
                        }
                        Divider()
                        VStack (alignment: .leading){
                            HStack {
                                Text("Bag Subtotal")
                                    .bold()
                                    .font(.system(size: 25))
                                Spacer()
                                Text("AED \(cartManager.totalPrice2)")
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
                    }
                }
            }
            
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
