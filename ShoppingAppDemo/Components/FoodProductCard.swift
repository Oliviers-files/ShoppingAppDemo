//
//  FoodProductCard.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 04/10/2024.
//

import SwiftUI

struct FoodProductCard: View {
    var product: MacMenu
    var body: some View {
        
        ZStack(alignment: .top) {
            VStack(spacing: 20) {
                Image(product.image)
                    .resizable()
                    .frame(width: 235, height: 185)
                    .scaledToFill()
                
                
                VStack (alignment: .leading) {
                    VStack {
                        Text(product.name)
                            .font(.title)
                            .bold()
                    }
                    .frame(alignment: .leading)
                    
                    HStack {
                        Text("AED \(product.price)")
                            .font(.subheadline)
                        
                        Spacer()
                        
                        Button {
                            print("see/Buy product")
                        } label: {
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
                    .padding(.bottom, 1)
                }
            }
            .scaledToFit()
            .frame(width: 240, height: 310)
            .padding()
            .background(Color.white)
            .cornerRadius(35)
            .shadow(radius: 3)
           }
    }
}

#Preview {
    FoodProductCard(product: menuItem[0])
}
