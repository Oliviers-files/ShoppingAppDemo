//
//  ContentView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 02/10/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @State private var path = [String]()
    
    var rows = [GridItem(.flexible(minimum: 410), spacing: 30)]
    
    let columns = [
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationStack(path: $path){
            
           ScrollView(.horizontal, showsIndicators: false) {
               LazyHGrid(rows: columns , spacing: 1) {
                   HStack {
                       VStack(spacing: 20) {
                           Button {
                               
                           } label: {
                               NavigationLink(destination: McDonaldView()) {
                                   Image("mcdonalds")
                                       .resizable()
                                       .frame(width: 230, height: 230)
                                       .scaledToFit()
                                       .cornerRadius(10)
                               }
                           }
                           
                           
                           VStack (alignment: .leading) {
                               VStack {
                                   Text("McDonald's")
                                       .font(.system(size: 30))
                                       .bold()
                               }
                               .frame(alignment: .leading)
                               
                               VStack{
                                   Text("'' I'm lovin' it ''")
                                   
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
                           .frame(width: 280)
                           .scaledToFit()
                           .cornerRadius(10)
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
                                   Text("Think different")
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
                               Text("Forever on-trend, forever you.")
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
                   //                    }
                   //                    .padding()
               }
                }
                .navigationBarBackButtonHidden()
                .navigationTitle("Brands")
                
                HStack{
                    
                    HStack {
                        Image(systemName: "house")
                            .resizable()
                            .frame(width: 30, height: 25)
                            .padding()
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        Spacer()
                        
//                        NavigationLink{  CartView(cartManager: cartManager.appleProducts.count)
//                                .environmentObject(cartManager)
//                        }label: {
//                            CartButton(numberOfItems: cartManager.appleProducts.count)
//                            
//                        }
                    }
                    .frame(width: 330, height: 25)
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(50)
                .shadow(radius: 5)
                .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}

#Preview {
    ContentView()
}
