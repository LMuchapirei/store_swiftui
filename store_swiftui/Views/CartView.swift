//
//  CartView.swift
//  store_swiftui
//
//  Created by Linval Muchapirei on 1/7/2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products,id:\.id){
                    product in
                      CartProductView(product: product)
                }
                HStack {
                    Text("Your Total is ")
                    Spacer()
                    Text("$\(cartManager.total)")
                        .bold()
                }.padding()
                PaymentButton(action: {})
                    .padding()
            }else{
                Text("Your Cart is Empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
