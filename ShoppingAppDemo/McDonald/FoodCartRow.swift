//
//  FoodCartRow.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 02/11/2024.
//

import SwiftUI

struct FoodCartRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: MacMenu
    
    var body: some View {
        ZStack {
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
                .frame(width: 115)
                
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
            .frame(width: UIScreen.main.bounds.width * 0.95, height: 100)
            .background(Color.white)
            
        }
        Divider()
    }
}

#Preview {
    FoodCartRow(product: menuItem[0])
}
