//
//  TabBarView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 16/10/2024.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab: Int = 0
    @State private var showCreateThreadView = false
    
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        
        VStack {
            TabView {
                ContentView()
                    .tabItem { Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                    }
                    .onAppear { selectedTab = 0}
                    .tag(0)
                
                CartView()
                    .environmentObject(CartManager())
                    .tabItem { Image(systemName: selectedTab == 1 ? "bag.fill" : "bag")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                    }
                    .badge(3)
                    .onAppear { selectedTab = 1}
                    .tag(1)
            }
        }
    }
}

#Preview {
    TabBarView()
        .environmentObject(CartManager())
}
