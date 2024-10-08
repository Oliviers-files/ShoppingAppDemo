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
        
        ZStack(alignment: .top) {
            VStack(spacing: 20) {
                Image(product.image)
                    .resizable()
                    .frame(width: 240, height: 210)
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
                    .frame(alignment: .leading)
                    
                    HStack {
                        
                        RoundedRectangle(cornerRadius: 30)
                                .fill(Color.blue)
                                .frame(width: 80, height: 45)
                                .overlay {
                                    Button {
                                        cartManager.addToCart(product: product)
                                    } label: {
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
                            NavigationLink(destination: ProMaxView(product: product)) {
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
                    .padding(.bottom, 1)
                }
                
            }
            .scaledToFit()
            .frame(width: 250, height: 350)
            .padding()
            .background(Color.white)
            .cornerRadius(35)
            .shadow(radius: 3)
            
           }
        
    }
}

#Preview {
    AppleProductCard(product: productList[0])
        .environmentObject(CartManager())
}
