//
//  ProductCard.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 03/10/2024.
//

import SwiftUI

struct AppleProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: AppleProduct
    
    var body: some View {
        
        VStack {
            VStack(spacing: 7) {
                Image(product.image)
                    .resizable()
                    .frame(width: 230, height: 210)
                    .scaledToFill()
                
                Spacer(minLength: 1)
                
                VStack (alignment: .leading) {
                    VStack (alignment: .leading){
                        Text(product.name)
                            .font(.title)
                            .bold()
                        
                        Text("AED \(product.price)")
                            .font(.subheadline)
                    }
                    //.frame(alignment: .leading)
                    
                    VStack {
                        HStack {
                            
                            Button {
                                cartManager.addToCart(product: product)
                            } label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.blue)
                                    .frame(width: 80, height: 45)
                                    .overlay {
                                        HStack {
                                            Image(systemName:"bag")
                                                .resizable()
                                                .foregroundStyle(.white)
                                                .frame(width: 23, height: 20)
                                            Text("Bag")
                                                .foregroundStyle(.white)
                                                .font(.subheadline)
                                        }
                                    }
                            }
                            
                            Spacer()
                            
                            Button {
                                print("see/Buy product")
                            } label: {
                                NavigationLink(destination: AppleProductInfo(product: product)) {
                                    RoundedRectangle(cornerRadius: 40)
                                        .fill(Color.black)
                                        .frame(width: 80, height: 50)
                                        .overlay {
                                            Text("Buy")
                                                .font(.title3)
                                                .bold()
                                                .foregroundStyle(.white)
                                        }
                                }
                            }
                        }
                        .padding(10)
                    }
                }
                .frame(width: 260)
            }
            .padding()
            
            }
            .scaledToFit()
            .frame(width: 250, height: 335)
            .padding()
            .background(Color.white)
            .cornerRadius(35)
            .shadow(radius: 3)
        
    }
}

#Preview {
    AppleProductCard(product: productList[0])
        .environmentObject(CartManager())
}
