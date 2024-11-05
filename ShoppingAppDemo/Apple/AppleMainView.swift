//
//  AppleMainView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 30/10/2024.
//

import SwiftUI

struct AppleMainView: View {
    @StateObject var cartManager = CartManager()
    var rows = [GridItem(.flexible(minimum: 410), spacing: 10)]
    
    let columns = [ GridItem(.flexible()) ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                VStack (alignment: .leading,spacing: 10){
                    Image("AStore")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.9999, height: 210)
                    
                    
                    Text("Apple Store")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .padding(.leading, 15)
                    
                    Text("Tech Accessories")
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
                            
                            Text("4.9")
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
                            
                            Image(systemName: "dollarsign")
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
                           
                            Text("Free")
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
                            
                            Text("949")
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
                
                HStack {
                    
                    
                    Button {
                        
                    } label: {
                        Text("See More")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                            .foregroundStyle(.black)
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .foregroundStyle(.black)
                            .frame(width: 10, height: 20)
                            
                    }
                }
                .frame(width: 350, alignment: .leading)
                .padding()
                .padding(.bottom, -30)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 20) {
                        
                        ForEach(productList, id: \.id) { Product in
                            AppleProductCard(product: Product)
                            
                        }
                        
                    }
                    //.navigationTitle("See More")
                    .padding(.horizontal)
                }
//                .toolbar {
//                    NavigationLink(destination: CartView().environmentObject(cartManager)) {
//                        Circle()
//                            .frame(width: 50, height: 50)
//                            .foregroundStyle(.white)
//                            .shadow(radius: 5)
//                            .overlay {
//                                CartButton(numberOfItems: cartManager.macProducts.count)
//                            }
//                    }
//                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    AppleMainView()
}
