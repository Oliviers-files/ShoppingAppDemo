//
//  CustomTabBar.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 26/10/2024.
//

import SwiftUI

struct CustomTabBar: View {
    
    @StateObject var cartManager = CartManager()
    
    //@State private var selectedTab: Tab = .home
    @State private var selectedTab: Int = 0
    @State private var showCreateThreadView = false
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                ContentView()
                    .tabItem { Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                            .padding(.top,120)
                    }
                    .onAppear { selectedTab = 0}
                    .tag(0)
                
                
                Map()
                    .tabItem { Image(systemName: selectedTab == 1 ? "map" : "map")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                    }
                    .onAppear { selectedTab = 1}
                    .tag(1)
                
                
                CartView()
                //.environmentObject(cartManager)
                    .tabItem { Image(systemName: selectedTab == 2 ? "bag.fill" : "bag")
                            .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                    }
                    .onAppear { selectedTab = 2}
                    .tag(2)
            }
            
        }
    }
}

#Preview {
    CustomTabBar()
        .environmentObject(CartManager())
}


