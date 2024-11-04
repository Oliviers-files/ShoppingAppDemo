//
//  SweaterCartRow.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 02/11/2024.
//

import SwiftUI

struct SweaterCartRow: View {
        @EnvironmentObject var cartManager: CartManager
        var product: F21Sweater
    
    var body: some View {
        
                HStack(spacing: 20) {
                    
                    HStack{ //(alignment: .leading) {
                        Image(product.image)
                            .resizable()
                            .frame(width: 100, height: 120)
                            .scaledToFit()
                        // .padding()
                        // .padding(.bottom, 15)
                        // Spacer()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text(product.name)
                                .font(.system(size: 20))
                                .bold()
                            
                            Text("AED \(product.price)")
                                .font(.subheadline)
                        }
                        
                    }
                    .frame(width: 200, alignment: .leading)
                    
                    Spacer(minLength: 60)
                    
                    Divider()
                    
                    VStack {
                        Image(systemName: "trash")
                            .resizable()
                            .foregroundStyle(.red)
                            .frame(width: 20, height: 25)
                            .onTapGesture {
                                cartManager.removeFromCart(product: product)
                            }
                    }
                    .padding(.trailing, 23)
                }
                .frame(width: UIScreen.main.bounds.width * 0.90, height: 120)
                .background(Color.white)
                .cornerRadius(15)
                .shadow(radius: 3)
    }
}

#Preview {
    SweaterCartRow(product: sweaterItem[0])
        .environmentObject(CartManager())
}
