//
//  ContentView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 03/10/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager
    // @StateObject var cartManager = CartManager()
    @State private var path = [String]()
    
    var rows = [GridItem(.flexible(minimum: 455), spacing: 10)]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationStack(path: $path) {
            
           // ZStack {
                
                ScrollView {
                    VStack {
                        Text("Brands")
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                            .foregroundStyle(.black)
                    }
                    .frame(width: 350, alignment: .leading)
                    .padding()
                    
                    HStack {
                        
                        NavigationLink(destination: McDonaldView()) {
                            Image("mcdonalds")
                                .resizable()
                                .scaledToFill()
                                .frame(width:110, height: 110)
                                .cornerRadius(10)
                        }
                        
                        
                        NavigationLink(destination: AppleMainView()) {
                            VStack{
                                Image(systemName: "apple.logo")
                                    .resizable()
                                    .foregroundStyle(.black)
                                    .frame(width: 60, height: 70)
                            }
                            .frame(width: 75, height:75)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .shadow(radius: 2)
                        }
                        
                        NavigationLink(destination: F21View()) {
                            Image("f21")
                                .resizable()
                                .frame(width: 110, height: 110)
                                .scaledToFit()
                                .cornerRadius(10)
                        }
                    }
                    
                   
                    
        NavigationLink(destination: AppleMainView()) {
                    HStack {
                        Text("Apple")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                            .foregroundStyle(.black)
                        
                        Spacer()
                        
                         Image(systemName: "chevron.right")
                                .resizable()
                                .foregroundStyle(.black)
                                .frame(width: 10, height: 20)
                            
                    }
                    .frame(width: 350, alignment: .leading)
                    
                }
        .padding()
        .padding(.bottom, -20)
                    // Apple Options:
                    VStack {
                        AppleOptionView(product: productList[0])
                    }
                    .frame(height: 530)
                    
                    Spacer()
                    
                    HStack {
                        Text("McDonalds")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
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
                    .padding(.bottom, -60)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows, spacing: 20) {
                            
                            ForEach(menuItem, id: \.id) { Product in
                                FoodProductCard(product: Product)
                                
                            }
                            
                        }
                        .padding(.horizontal)
                    }
                    
                }
                .navigationBarBackButtonHidden()
            
         }
    }
}

#Preview {
    ContentView()
        .environmentObject(CartManager())
}
