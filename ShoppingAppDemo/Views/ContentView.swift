//
//  ContentView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 02/10/2024.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 310), spacing: 40)]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns , spacing: 1) {
                    
                    VStack(spacing: 20) {
                        Image("AirpodsMax")
                            .resizable()
                            .scaledToFit()
                        
                        VStack (alignment: .leading) {
                            VStack {
                                Text("Airpods Max")
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
                                Text("AED 2,099")
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
                    .frame(width: 300, height: 400)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(35)
                    .shadow(radius: 5)
                }
                .padding()
                
                
                ZStack(alignment: .topTrailing) {
                    VStack(spacing: 10) {
                        Image("mba13-midnight")
                            .resizable()
                            .scaledToFit()
                        
                        VStack (alignment: .leading) {
                            VStack {
                                Text("MackBook Air")
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
                                Text("AED 2,099")
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
                    .frame(width: 300, height: 400)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(35)
                    .shadow(radius: 5)
                }.padding()
                
                ZStack(alignment: .topTrailing) {
                    VStack(spacing: 10) {
                        Image("appleWatch")
                            .resizable()
                            .scaledToFit()
                        
                        VStack (alignment: .leading) {
                            VStack {
                                Text("Apple Watch")
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
                                Text("AED 2,099")
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
                    .frame(width: 300, height: 400)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(35)
                    .shadow(radius: 5)
                }
                .padding()
            }
            .navigationTitle(Text("Products"))
        }
    }
}
                    
#Preview {
    ContentView()
}
