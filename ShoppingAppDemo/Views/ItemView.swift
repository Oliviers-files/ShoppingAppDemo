//
//  ItemView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 03/10/2024.
//

import SwiftUI

struct ItemView: View {
    @EnvironmentObject var cartManager: CartManager
   // @StateObject var cartManager = CartManager()
    @State private var path = [String]()
    
    var rows = [GridItem(.flexible(minimum: 410), spacing: 10)]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationStack(path: $path) {
            
            ZStack {
                
                ScrollView {
                    VStack {
                     Text("Brands")
                                .fontWeight(.bold)
                                .font(.system(size: 35))
                                .foregroundStyle(.black)
                    }
                    .frame(width: 350, alignment: .leading)
                    .padding()
                    //.padding(.bottom,-45)
                    
                    HStack {
                        Button {
                            
                        } label: {
                            NavigationLink(destination: McDonaldView()) {
                                Image("mcdonalds")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:120, height: 120)
                                    .cornerRadius(10)
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            NavigationLink(destination: McDonaldView()) {
                                VStack{
                                    Image(systemName: "apple.logo")
                                        .resizable()
                                        .foregroundStyle(.black)
                                        .frame(width: 60, height: 70)
                                        .scaledToFit()
                                        .cornerRadius(10)
                                }
                                .frame(width: 80, height:85)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                                .shadow(radius: 2)
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            NavigationLink(destination: McDonaldView()) {
                                Image("f21")
                                    .resizable()
                                    .frame(width: 120, height: 120)
                                    .scaledToFit()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    
                    HStack {
                        
                        Text("Apple")
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                            .foregroundStyle(.black)
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "chevron.right")
                                .resizable()
                                .foregroundStyle(.black)
                                .frame(width: 10, height: 20)
                            
                        }
                    }
                    .frame(width: 350, alignment: .leading)
                    .padding()
                    //.padding()
                    
                    // First LazyHGrid with a fixed height for the ScrollView
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows, spacing: 20) {
                            
                            ForEach(productList, id: \.id) { Product in
                                AppleProductCard(product: Product)
                                    .environmentObject(cartManager)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Spacer()
                    HStack {
                        Text("McDonalds")
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                            .foregroundStyle(.black)
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "chevron.right")
                                .resizable()
                                .foregroundStyle(.black)
                                .frame(width: 10, height: 20)
                            
                        }
                    }
                    .frame(width: 350, alignment: .leading)
                    .padding()
                    .padding(.bottom,-45)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows, spacing: 20) {
                            
                            ForEach(menuItem, id: \.id) { Product in
                                FoodProductCard(product: Product)
                                
                            }
                            
                        }
                        //.navigationTitle("See More")
                        .padding(.horizontal)
                    }
                    
                }
                .navigationBarBackButtonHidden()
                
               
                
                
//                HStack {
//                    Image(systemName: "house")
//                        .resizable()
//                        .frame(width: 30, height: 25)
//                        .padding()
//                    
//                    Spacer()
//                    
//                    Image(systemName: "magnifyingglass")
//                        .resizable()
//                        .frame(width: 25, height: 25)
//                    
//                    Spacer()
//                    
//                    NavigationLink {
//                        CartView()
//                            .environmentObject(cartManager)
//                    }label: {
//                        CartButton(numberOfItems: cartManager.appleProducts.count)
//                        
//                    }
//                    
//                }
//                .frame(width: 330, height: 25)
//                .padding()
//                .background(.ultraThinMaterial)
//                .cornerRadius(50)
//                .shadow(radius: 5)
//                .frame(maxHeight: .infinity, alignment: .bottom)
            }
            
        }
    }
}

#Preview {
    ItemView()
        .environmentObject(CartManager())
}
