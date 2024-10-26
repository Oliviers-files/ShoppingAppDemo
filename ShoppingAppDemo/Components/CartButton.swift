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
                        .frame(width: 27, height: 27)
                }
                .frame(width: 56,height: 45)
                
                .overlay(alignment: .topTrailing){
                    
                    if numberOfItems > 0 {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 20, height: 25)
                        
                        Text("\(numberOfItems)")
                            .font(.system(size:10))
                            .bold()
                            .foregroundStyle(Color.white)
                    }
                }
                .frame(alignment: .trailing)
            }
            .frame(alignment: .trailing)
        }
        .frame(maxHeight: .infinity, alignment: .topTrailing)
    }
}

#Preview {
    CartButton(numberOfItems: 1)
}
