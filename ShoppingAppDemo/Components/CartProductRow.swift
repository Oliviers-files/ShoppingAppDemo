//
//  CartProductRow.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 07/10/2024.
//

import SwiftUI

struct CartProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: AppleProduct
    
    var body: some View {
        
            HStack(spacing: 20) {
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 130)
                    .scaledToFit()
                    .padding()
                    .padding(.bottom, 15)
                
                
                VStack(alignment: .leading, spacing: 10) {
                        Text(product.name)
                            .font(.system(size: 20))
                            .bold()
                    
                        Text("AED \(product.price)")
                            .font(.subheadline)
                        
                    }
                    .frame(width: 120)
                    .padding()
                Spacer()
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
            .frame(width: 420, height: 140)
            .background(Color.white)
            .cornerRadius(35)
            .shadow(radius: 3)
    }
}

#Preview {
    CartProductRow(product: productList[0])
        .environmentObject(CartManager())
}
