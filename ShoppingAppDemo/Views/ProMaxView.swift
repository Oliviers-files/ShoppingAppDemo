//
//  ProMaxView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 05/10/2024.
//

import SwiftUI

struct ProMaxView: View {
    var product: AppleProduct
    @EnvironmentObject var cartManager: CartManager
    
    var rows = [GridItem(.fixed(410), spacing: 10)]
    let columns = [ GridItem(.flexible(minimum: 112))]
    
    var body: some View {
        
        ScrollView (showsIndicators: false){
            LazyVGrid(columns: columns) {
                VStack {
                    Image(product.image)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.84, height: 295)
                    
                    VStack {
                        HStack {
                            Text("AED")
                                .fontWeight(.medium)
                                .font(.title2)
                            
                            Text("\(product.price)")
                                .font(.system(size:40))
                                .font(.title)
                                .fontWeight(.heavy)
                            
                            Spacer()
                            
                            Button {
                                cartManager.addToCart(product: product)
                                    
                            } label: {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(red: 0.005, green: 0.442, blue: 0.889))
                                    .frame(width: 150)
                                    .overlay {
                                        Text("Add to bag")
                                            .font(.system(size: 20))
                                            .foregroundStyle(Color.white)
                                    }
                            }
                        }.padding(10)
                        
                    }.padding()
                }
            }
            
            Divider()
            
            VStack(alignment: .leading) {
                VStack {
                    Text("Take a closer look.")
                        .font(.system(size: 25))
                        .bold()
                }
                .padding()
                
                Divider()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 20) {
                        Image(product.look)
                            .resizable()
                            .frame(width: 200, height: 250)
                            .cornerRadius(25)
                            .shadow(radius: 3)
                        
                        Image(product.look2)
                            .resizable()
                            .frame(width: 200, height: 250)
                            .cornerRadius(25)
                            .shadow(radius: 3)
                        
                        Image(product.look3)
                            .resizable()
                            .frame(width: 240, height: 250)
                            .cornerRadius(25)
                            .shadow(radius: 3)
                        
                        Image(product.look4)
                            .resizable()
                            .frame(width: 200, height: 250)
                            .cornerRadius(25)
                            .shadow(radius: 3)
                        
                    }
                    .padding()
                    .padding(.top,-40)
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        ProMaxView(product: productList[0])
            .environmentObject(CartManager())
    }
}
