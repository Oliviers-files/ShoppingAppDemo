//
//  AppleOptionView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 28/10/2024.
//

import SwiftUI

struct AppleOptionView: View {
    var product: AppleProduct
    var rows = [GridItem(.adaptive(minimum: 430), spacing: 10)]
    
    var body: some View {
        
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, spacing: 20) {
                
                NavigationLink(destination: ProMaxView(product: productList[1])) {
                    VStack(alignment: .leading) {
                        
                        VStack (alignment: .leading, spacing: 5){
                            Text("FREE ENGRAVING")
                                .font(.system(size: 11))
                                .foregroundStyle(.secondary)
                                .bold()
                                .foregroundStyle(.white)
                            
                            Text("Airpods Pro 2")
                                .font(.largeTitle)
                                .bold()
                                .foregroundStyle(.white)
                            
                            Text("Learn about the world's first")
                                .font(.system(size: 13))
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                                .foregroundStyle(.white)
                            
                            Text("all-in-one hearing health")
                                .font(.system(size: 13))
                                .font(.subheadline)
                            
                                .fontWeight(.semibold)
                            
                                .foregroundStyle(.white)
                        }
                        .frame(width: 300, height: 90, alignment: .leading)
                        
                        VStack{
                            
                            Image("blackpc")
                                .resizable()
                                .frame(width: 230, height: 270)
                                .foregroundStyle(.white)
                                .padding(.horizontal)
                            
                        }
                        .padding()
                        Spacer()
                        
                        HStack {
                            
                            VStack(alignment: .leading){
                                Text("Free Memoji engraving")
                                    .font(.system(size: 13))
                                    .bold()
                                    .foregroundStyle(.white)
                                
                                Text("available exclusively in the")
                                    .font(.system(size: 13))
                                    .bold()
                                    .foregroundStyle(.white)
                                
                                Text("Apple Store app")
                                    .font(.system(size: 13))
                                    .bold()
                                    .foregroundStyle(.white)
                            }
                            Spacer()
                            
                            RoundedRectangle(cornerRadius: 40)
                                .fill(.ultraThickMaterial)
                                .frame(width: 90, height: 35)
                                .shadow(radius: 1)
                                .overlay {
                                    Text("AED 949")
                                        .font(.system(size: 15))
                                        .fontWeight(.bold)
                                        .foregroundStyle(.blue)
                                }
                        }
                    }
                    .scaledToFit()
                    .frame(width: 300, height: 470)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(1), radius: 5)
                    
                }
                .padding(.leading)
                
                
                NavigationLink(destination: ProMaxView(product: productList[0])) {
                    ZStack {
                        VStack {
                            
                            VStack (alignment: .leading, spacing: 5){
                                Text("NEW COLORS")
                                    .font(.system(size: 11))
                                    .foregroundStyle(.secondary)
                                    .bold()
                                
                                Text("Airpods Max")
                                    .font(.largeTitle)
                                    .bold()
                                
                                Text("Check out the ultimate over-ear listenning")
                                    .font(.system(size: 13))
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                
                                
                                Text("experience, now in fresh colors. ")
                                    .font(.system(size: 13))
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                
                            }
                            .frame(width: 290, height: 90, alignment: .leading)
                            
                            
                            VStack{
                                
                                Image("airpods-max-hero")
                                    .resizable()
                                    .frame(height: 290)
                            }
                            .padding(.bottom, 15)
                            Spacer()
                            
                            
                            
                            HStack {
                                
                                Text("AED 2,099.00")
                                    .font(.system(size: 15))
                                    .bold()
                                
                                Spacer()
                                
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(.ultraThickMaterial)
                                    .frame(width: 90, height: 35)
                                    .shadow(radius: 1)
                                    .overlay {
                                        Text("Buy")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundStyle(.blue)
                                    }
                            }
                            
                        }
                        .foregroundStyle(.black)
                        
                    }
                    .scaledToFit()
                    .frame(width: 300, height: 470)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                }
                
                NavigationLink(destination: ProMaxView(product: productList[4])) {
                    
                    ZStack {
                        VStack {
                            
                            VStack (alignment: .leading, spacing: 5){
                                Text("NEW COLORS")
                                    .font(.system(size: 11))
                                    .foregroundStyle(.secondary)
                                    .bold()
                                
                                Text("MacBook.")
                                    .font(.largeTitle)
                                    .bold()
                                
                                Text("Check out the ultimate over-ear listenning")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 5))
                                
                                Text("experience, now in fresh colors. ")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 5))
                            }
                            .frame(width: 300, height: 90)
                            
                            
                            VStack{
                                
                                Image("14-spcgry")
                                    .resizable()
                                    .frame(width: 330, height: 270)
                            }
                            .padding(.bottom, 15)
                            Spacer()
                            
                            
                            
                            HStack {
                                
                                Text("AED 2,099.00")
                                    .font(.system(size: 15))
                                    .bold()
                                
                                Spacer()
                                
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(.ultraThickMaterial)
                                    .frame(width: 90, height: 35)
                                    .shadow(radius: 1)
                                    .overlay {
                                        Text("Buy")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundStyle(.blue)
                                    }
                            }
                            
                        }
                        .foregroundStyle(.black)
                        
                    }
                    .scaledToFit()
                    .frame(width: 300, height: 470)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                }
                
            }
            
        }
    }
}

#Preview {
    NavigationStack {
        AppleOptionView(product: productList[0])
    }
}
