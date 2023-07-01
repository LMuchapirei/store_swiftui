//
//  Search.swift
//  store_swiftui
//
//  Created by Linval Muchapirei on 1/7/2023.
//

import SwiftUI

struct Search: View {
    @State private var search:String = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField(
                    "Search for furniture",text: $search)
                .padding()
            }
            .background(Color("kSecondary"))
            .cornerRadius(12)
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(Color("kPrimary"))
                .cornerRadius(12)
        }.padding(.horizontal)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
