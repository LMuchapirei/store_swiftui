//
//  ProductSearchView.swift
//  store_swiftui
//
//  Created by Linval Muchapirei on 1/7/2023.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    var body: some View {
        ScrollView {
            ZStack{
                Color.white
                VStack(alignment: .leading) {
                    ZStack(alignment: .topTrailing) {
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges:.top)
                            .frame(height: 300)
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .padding(.top,65)
                            .padding(.trailing,20)
                    }
                    VStack(alignment:.leading){
                        HStack{
                            Text(product.name)
                                .font(.title2 .bold())
                            Spacer()
                            Text("$\(product.price)")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("kSecondary"))
                                .cornerRadius(12)
                        }
                        .padding(.vertical)
                        HStack {
                            HStack(spacing: 10){
                                ForEach(0..<5){ index in
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 20,height: 20)
                                        .foregroundColor(.yellow)
                                }
                                Text("(4.5)")
                                    .foregroundColor(.gray)
                            }.padding(.vertical)
                            
                            Spacer()
                            
                            HStack{
                                Button(action:{},label: {
                                    Image(systemName: "minus.square")
                                })
                                Text("1")
                                Button(action:{},label: {
                                    Image(systemName: "plus.square.fill")
                                        .foregroundColor(Color("kPrimary"))
                                })
                            }
                        }
                        Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text(product.description)
                        Spacer()
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text("Size")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                Text("Height:\(product.height)")
                                    .opacity(0.5)
                                Text("Width:\(product.width)")
                                    .opacity(0.5)
                                Text("Diameter:\(product.diameter)")
                                    .opacity(0.5)
                            }.frame(maxWidth:.infinity,alignment: .leading)
                            Spacer()
                            VStack(alignment: .trailing){
                                HStack{
                                    ColorDotView(color: .blue)
                                    ColorDotView(color: .black)
                                    ColorDotView(color: .green)
                                }
                            }.frame(maxWidth:.infinity,alignment: .trailing)
                        }
                        .padding(.vertical)
                        PaymentButton(action: {})
                            .frame(width: .infinity,height: 35)
                    }
                    .padding()
                    .background(.white)
                    .cornerRadius(20)
                    .offset(y:-30)
          
                }
            }
        }
        .ignoresSafeArea(edges:.top)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: productList[2])
    }
}


struct ColorDotView: View {
    let color: Color
    var body: some View {
        color.frame(width: 25,height: 25)
            .clipShape(Circle())
    }
}
