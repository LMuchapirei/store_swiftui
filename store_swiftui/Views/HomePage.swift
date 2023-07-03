//
//  HomePage.swift
//  store_swiftui
//
//  Created by Linval Muchapirei on 1/7/2023.
//

import SwiftUI

struct HomePage: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    AppBar()
                    Search()
                    ImageSliderView()
                    HStack {
                        Text("New Arrivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        NavigationLink {
                            ProductsView()
                        } label:{
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(Color("kPrimary"))
                        }
                    }.padding()
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing: 10) {
                            ForEach(productList,id: \.id){ product in
                                NavigationLink{
                                    ProductDetailView(product: product)
                                } label: {
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .environmentObject(CartManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .padding(.trailing)
                    
                    Text("Harare, Zimbabwe")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: CartView()
                    ) {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                    
                }
            }
//            Text("Find the Most Exotic")
//                .font(.largeTitle .bold())
//            +
            Text(" Furniture")
                .font(.largeTitle .bold())
                .foregroundColor(Color("kPrimary"))
            
        }
        .padding()
        .environmentObject(CartManager())
    }
}
