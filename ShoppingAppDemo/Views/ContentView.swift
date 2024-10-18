//
//  ContentView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 02/10/2024.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 310), spacing: 40)]
    @StateObject var cartManager = CartManager()
    
    var body: some View {
        
    NavigationView {
        ScrollView {
            LazyVGrid(columns: columns , spacing: 1) {
                
                VStack(spacing: 20) {
                    Image("mcdonalds")
                        .resizable()
                        .frame(width: 280)
                        .scaledToFit()
                        .cornerRadius(10)
                    
                    
                    VStack (alignment: .leading) {
                        VStack {
                            Text("McDonald's")
                                .font(.system(size: 30))
                                .bold()
                        }
                        .frame(alignment: .leading)
                        
                        VStack{
                            Text("Check out the ultimate over-ear listening experience, now in five fresh colors.")
                                .font(.caption)
                                .foregroundStyle(Color.gray)
                            
                        }
                        HStack {
                            Text("")
                                .font(.subheadline)
                            
                            
                            Spacer()
                            
                            Button {
                                print("see/Buy product")
                            } label: {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.black)
                                    .frame(width: 80, height: 50)
                                    .overlay {
                                        NavigationLink {
                                            McDonaldView()
                                        } label: {
                                            Text("Shop")
                                                .font(.title3)
                                                .bold()
                                                .foregroundStyle(.white)
                                        }
                                    }
                            }
                        }
                        .padding(.bottom, 1)
                        
                    }
                }
                .frame(width: 300, height: 400)
                .padding()
                .background(Color.white)
                .cornerRadius(35)
                .shadow(radius: 5)
            }
            .padding()
            
            
            ZStack(alignment: .topTrailing) {
                VStack(spacing: 10) {
                    Image(systemName: "apple.logo")
                        .resizable()
                        .frame(width: 195 ,height: 240)
                        .scaledToFit()
                    
                    VStack (alignment: .leading) {
                        VStack {
                            Text("Apple Store")
                                .font(.system(size: 30))
                                .bold()
                        }
                        .frame(alignment: .leading)
                        
                        VStack{
                            Text("Check out the ultimate over-ear listening experience, now in five fresh colors.")
                                .font(.caption)
                                .foregroundStyle(Color.gray)
                            
                        }
                        HStack {
                            Text("")
                                .font(.subheadline)
                            
                            
                            Spacer()
                            
                            Button {
                                print("see/Buy product")
                            } label: {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.black)
                                    .frame(width: 80, height: 50)
                                    .overlay {
                                        NavigationLink {
                                            ItemView()
                                        } label: {
                                            Text("Shop")
                                                .font(.title3)
                                                .bold()
                                                .foregroundStyle(.white)
                                        }
                                    }
                            }
                            .padding(.bottom, 1)
                        }
                    }
                }
                .frame(width: 300, height: 400)
                .padding()
                .background(Color.white)
                .cornerRadius(35)
                .shadow(radius: 5)
            }.padding()
            
            ZStack(alignment: .topTrailing) {
                VStack(spacing: 10) {
                    Image("f21")
                        .resizable()
                        .frame(width: 280)
                        .scaledToFit()
                        .cornerRadius(10)
                    
                    VStack (alignment: .leading) {
                        VStack {
                            Text("Forever 21")
                                .font(.system(size: 30))
                                .bold()
                        }
                        .frame(alignment: .leading)
                        
                        VStack{
                            Text("Check out the ultimate over-ear listening experience, now in five fresh colors.")
                                .font(.caption)
                                .foregroundStyle(Color.gray)
                            
                        }
                        HStack {
                            Text("")
                                .font(.subheadline)
                            
                            
                            Spacer()
                            
                            Button {
                                print("see/Buy product")
                            } label: {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.black)
                                    .frame(width: 80, height: 50)
                                    .overlay {
                                        Text("Shop")
                                            .font(.title3)
                                            .bold()
                                            .foregroundStyle(.white)
                                    }
                            }
                        }
                        .padding(.bottom, 1)
                        
                    }
                }
                .frame(width: 300, height: 400)
                .padding()
                .background(Color.white)
                .cornerRadius(35)
                .shadow(radius: 5)
            }
            .padding()
        }
        .navigationTitle("Brands")
        .toolbar {
            NavigationLink(destination: CartView().environmentObject(cartManager)) {
                CartButton(numberOfItems: cartManager.appleProducts.count)
            }
        }
        
        }
    }
}
                    
#Preview {
   
    ContentView()
}
