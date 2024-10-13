//
//  PaymentButton.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 12/10/2024.
//

import SwiftUI

struct PaymentButton: View {
    @State var showBottomSheet = false
    
    var body: some View {
        VStack {
            Button{showBottomSheet.toggle() } label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black)
                    .frame(minWidth: 100, maxWidth: 400)
                    .frame(height: 45)
                    .frame(maxWidth: .infinity)
                    .overlay {
                        Text("Buy with \(Image(systemName: "apple.logo"))Pay")
                            .foregroundStyle(.white)
                            .font(.system(size: 25))
                    }
            }
                
        }
        .padding()
        .sheet(isPresented: $showBottomSheet) {
            BottomSheetView()
                .presentationDetents([.height(640)])
                .background((Color(red: 0.949, green: 0.949, blue: 0.949)))
        }
        
    }
}

struct BottomSheetView: View {
    var body: some View {
        VStack {
            SheetView()
        }
    }
}
#Preview {
    PaymentButton()
}
