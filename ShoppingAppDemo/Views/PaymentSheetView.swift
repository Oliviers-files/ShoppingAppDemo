//
//  SheetView.swift
//  ShoppingAppDemo
//
//  Created by Stellone Olivier on 12/10/2024.
//

import SwiftUI

struct SheetView: View {
    
    var body: some View {
        
       
        
        ZStack {
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Image("card")
                        .resizable()
                        .frame(width: 90, height: 60)
                    
                    VStack (alignment: .leading){
                        Text("Simulated Card - Visa")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                        
                        
                        Text("**** 5432")
                            .foregroundStyle(.gray)
                    }
                    .frame(width: 195)
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundStyle(Color.gray)
                    }
                    .frame(width: 40, alignment: .trailing)
                }
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.85, height: 60, alignment: .leading)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 1)
                
                HStack {
                    HStack (alignment: .top){
                        HStack {
                            VStack(alignment: .leading) {
                                Image(systemName: "mappin.square.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .symbolRenderingMode(.hierarchical)
                                
                            }
                        }
                        .frame(height: 100, alignment: .topLeading)
                        
                        VStack (alignment: .leading, spacing: 10) {
                            Text("Deliver to")
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .foregroundStyle(.gray)
                            
                            Text("67CP+H4Q - Sheikh Zayed Rd - Trade Centre- Trade Centre 2 - Dubai")
                                .font(.system(size: 20))
                        }
                        .frame(width: 250,height: 120, alignment: .topLeading )
                        //.padding()
                        
                        HStack {
                            Image(systemName: "chevron.right")
                                .foregroundStyle(Color.gray)
                        }
                        .frame(height: 115, alignment: .trailing)
                        .padding(.bottom, 50)
                        .padding(.leading,30)
                        
                    }
                    .frame(alignment: .topLeading)
                }
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.85, height: 110, alignment: .topLeading)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 1)
                
                HStack {
                    HStack (alignment: .top) {
                        HStack {
                            VStack(alignment: .leading) {
                                Image(systemName: "shippingbox.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .symbolRenderingMode(.hierarchical)
                            }
                        }
                        .frame(height: 100, alignment: .topLeading)
                        
                        VStack (alignment: .leading){
                            Text("Arriving")
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .foregroundStyle(.gray)
                            
                            
                            Text("Dec 10 - 15")
                                .font(.system(size: 20))
                            Text("Delivery")
                                .font(.system(size: 20))
                            
                        }
                        .frame(width: 245, alignment: .leading)
                        
                        Spacer()
                        
                    }
                    .frame(alignment: .topLeading)
                    
                    HStack {
                        Image(systemName: "chevron.right")
                            .foregroundStyle(Color.gray)
                    }
                    .frame(width: 50, alignment: .trailing)
                    .padding(.bottom, 35)
                    
                }
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.85, height: 70, alignment: .topLeading)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 1)
                .padding(.bottom)
                
                
                VStack {
                    HStack {
                        VStack (alignment: .leading) {
                            Text("Pay Total")
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .foregroundStyle(.gray)
                            
                            Text("AED 4500.69")
                                .font(.system(size: 25))
                                .fontWeight(.heavy)
                                .foregroundStyle(.black)
                        }
                        .frame(width: 170)
                        .padding(.leading, 15)
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "chevron.right")
                                .foregroundStyle(Color.gray)
                        }
                        .padding(.leading, 170)
                        
                        
                    }
                    
                    Divider()
                    
                    VStack{
                        Image(systemName: "faceid")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(Color.blue)
                        
                        Text("Pay with Face ID")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                    }
                    .padding(2)
                    //.padding(.leading, 40)
                    
                }
                .scaledToFit()
                .frame(width: 400, height: 180, alignment: .topLeading)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 1)
                
            }
            //.frame(width: 190/*UIScreen.main.bounds.width * 0.9*/)
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    SheetView()
}
