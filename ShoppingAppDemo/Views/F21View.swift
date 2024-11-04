//
//  F21View.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 31/10/2024.
//

import SwiftUI

struct F21View: View {
    
    let columns = [ GridItem(.adaptive(minimum: 170, maximum: 175), spacing: 20) ]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                VStack (alignment: .leading,spacing: 10){
                    Image("f21head")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.9999, height: 210)
                    
                    
                    Text("Forever 21")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .padding(.leading, 15)
                    
                    Text("American, Clothes")
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
                
                HStack {
                        Text("Sweaters")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .foregroundStyle(.black)
                }
                .frame(width: 350, alignment: .leading)
                .padding()
                .padding(.bottom,-10)
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(sweaterItem, id: \.id) { product in
                        F21SweaterView(product: product)
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    F21View()
}
