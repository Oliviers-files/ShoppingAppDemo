//
//  CartButton.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 04/10/2024.
//

import SwiftUI

struct CartButton: View {
    var numberOfItems: Int
    
    var body: some View {
        
        
                ZStack{
                    VStack{
                        Button {
                            
                    } label: {
                            NavigationLink(destination: CartView()) {
                        Image(systemName: "bag")
                            .resizable()
                            .foregroundStyle(Color.black)
                            .frame(width: 27, height: 27)
                    }
                }
                    
                }.frame(width: 56,height: 45)
                    .overlay(alignment: .topTrailing){
                        Circle()
                            .fill(Color.red)
                            .frame(width: 20, height: 25)
                        
                        if numberOfItems > 0 {
                            Text("\(numberOfItems)")
                                .font(.system(size:18))
                                .bold()
                                .foregroundStyle(Color.white)
                        }
                    }
            }
    }
}

#Preview {
    CartButton(numberOfItems: 1)
}
