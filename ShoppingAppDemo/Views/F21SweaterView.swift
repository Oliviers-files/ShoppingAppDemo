//
//  F21SweaterView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 31/10/2024.
//

import SwiftUI

struct F21SweaterView: View {
    var product: F21Sweater
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(product.image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 180)
                .scaledToFit()
            
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("AED \(product.price)")
                        .font(.caption)
                }
                
                Spacer()
                
                Button {
                    cartManager.addToCart(product: product)
                } label: {
                    Image(systemName: "plus")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.black)
                        .cornerRadius(50)
                    
                }
                
            }
            .padding()
            .frame(width: 180, alignment: .leading)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
            
        }
        .frame(width: 180, height: 260)
        .shadow(radius: 3)
        
    }
}

#Preview {
    F21SweaterView(product: sweaterItem[0])
        .environmentObject(CartManager())
}
