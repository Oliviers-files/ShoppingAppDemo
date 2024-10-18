//
//  McDonaldView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 04/10/2024.
//

import SwiftUI

struct McDonaldView: View {
    var rows = [GridItem(.flexible(minimum: 410), spacing: 10)]
    @StateObject var cartManager = CartManager()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                VStack (alignment: .leading,spacing: 10){
                    Image("mcHead")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.9999, height: 210)
                    
                    
                    Text("Mcdonald's Dubai")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .padding(.leading, 15)
                    
                    Text("American, Fast Food, Burger")
                        .foregroundStyle(.gray)
                        .font(.system(size: 15))
                        .padding(.leading, 15)
                }
                
                
                Divider()
                
                HStack {
                    Spacer()
                    
                    VStack(spacing: 10) {
                        
                        HStack (alignment: .center) {
                            Image(systemName: "star.fill")
                                .foregroundStyle(Color.yellow)
                            
                            Text("4.6")
                                .font(.system(size: 25))
                                .fontWeight(.heavy)
                        }
                        
                        Text("999+ Ratings")
                            .foregroundStyle(.gray)
                            .font(.system(size: 12))
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    VStack(spacing: 10) {
                        HStack (alignment: .center, spacing: 1) {
                            Image(systemName: "dollarsign")
                                
                            Image(systemName: "dollarsign")
                                .foregroundStyle(Color.gray)
                            
                            Image(systemName: "dollarsign")
                                .foregroundStyle(Color.gray)
                        }
                        
                        Text("Price")
                            .foregroundStyle(.gray)
                            .font(.system(size: 12))
                    }
                    
                    Spacer()
                    Divider()
                    Spacer()
                    
                    VStack(spacing: 6) {
                        
                        HStack (alignment: .bottom) {
                            
                            Text("AED")
                                .font(.system(size: 15))
                                .foregroundStyle(.gray)
                            
                            Text("6.5")
                                .font(.system(size: 25))
                                .fontWeight(.heavy)
                        }
                        
                        Text("Delivery")
                            .foregroundStyle(.gray)
                            .font(.system(size: 12))
                    }
                    
                    Spacer()
                    Divider()
                    
                    Spacer()
                    
                    VStack(spacing: 6) {
                        
                        HStack (alignment: .bottom) {
                            
                            Text("AED")
                                .font(.system(size: 15))
                                .foregroundStyle(.gray)
                            
                            Text("20")
                                .font(.system(size: 25))
                                .fontWeight(.heavy)
                        }
                        
                        Text("Minimum")
                            .foregroundStyle(.gray)
                            .font(.system(size: 12))
                    }
                    Spacer()
                }
                
                Divider()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 20) {
                        ForEach(menuItem, id: \.id) { Product in
                            FoodProductCard(product: Product)
                        }
                    }
                    .padding(.horizontal)
                }
//                .toolbar {
//                    NavigationLink(destination: CartView().environmentObject(cartManager)) {
//                        CartButton(numberOfItems: cartManager.appleProducts.count)
//                    }
//                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    McDonaldView()
}
