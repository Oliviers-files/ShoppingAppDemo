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
            VStack {
                VStack {
                    
                    Image(systemName: "bag")
                        .resizable()
                        .foregroundStyle(Color.black)
                        .frame(width: 22, height: 22)
                }
                .frame(width: 56,height: 45)
                
                .overlay(alignment: .topTrailing){
                    
                    if numberOfItems > 0 {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 20, height: 20)
                        
                        Text("\(numberOfItems)")
                            .font(.system(size:13))
                            .bold()
                            .foregroundStyle(Color.white)
                    }
                }
                //.frame(alignment: .trailing)
            }
            .frame(height: 765, alignment: .bottom)
            //.ignoresSafeArea()
        }
        
    }
}

#Preview {
    CartButton(numberOfItems: 1)
}
