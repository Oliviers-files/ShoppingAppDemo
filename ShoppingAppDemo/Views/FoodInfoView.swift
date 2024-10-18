//
//  FoodInfoView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 08/10/2024.
//

import SwiftUI

struct FoodInfoView: View {
    var product: MacMenu
    @StateObject var cartManager = CartManager()
    
    var rows = [GridItem(.fixed(410), spacing: 10)]
    let columns = [ GridItem(.flexible(minimum: 112))]
    
    var body: some View {
        ScrollView (showsIndicators: false){
            LazyVGrid(columns: columns) {
                VStack {
                    
                    VStack {
                        Image(product.image)
                            .resizable()
                        
                    }
                    .frame(width: 285, height: 290)
                    .cornerRadius(35)
                    .shadow(radius: 2)
                    
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
                                //.environmentObject(cartManager)
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
                        }
                        .padding(10)
                        .frame(width: UIScreen.main.bounds.width * 0.90)
                        .padding(10)
                    }
                    .padding()
                }
            }
            
            Divider()
            
            HStack {
                    Text("Add-ons:")
                        .font(.system(size: 25))
                        .bold()
                    
                    Spacer()
                    
                    Text("Max 4")
                        .foregroundStyle(.blue)
                        .bold()
                    
                }
                .padding()
                
            VStack {
                List{
                    Text("dddf")
                        .badge("\(Image(systemName: "checkmark.square.fill"))")
                    
                    Text("dddf")
                        .badge("\(Image(systemName: "square"))")
                    
                    Text("dddf")
                        .badge("\(Image(systemName: "square"))")
                    
                    Text("dddf")
                        .badge("\(Image(systemName: "checkmark.square.fill"))")
                    
                    Text("dddf")
                        .badge("\(Image(systemName: "square"))")
                    
                    Text("dddf")
                        .badge("\(Image(systemName: "square"))")
                    
                    Text("dddf")
                        .badge("\(Image(systemName: "square"))")
                }
                //.frame(width: 400,height: 250)
                //.padding()
            }
            .frame(width: 400,height: 350)
            
        }
    }
}

#Preview {
    NavigationView{
        FoodInfoView(product: menuItem[0])
            .environmentObject(CartManager())
    }
}
