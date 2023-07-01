//
//  ImageSliderView.swift
//  store_swiftui
//
//  Created by Linval Muchapirei on 1/7/2023.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 1
    var slides: [String] = ["img5","img7","img10","img2","img6"]
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .trailing){
                Image(slides[currentIndex])
                .resizable()
                .frame(width: .infinity,height: 180)
                .scaledToFit()
                .cornerRadius(15)
            }
            HStack{
                ForEach(0..<slides.count){
                    index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary"):Color("kSecondary"))
                        .frame(width: 10,height: 10)
                }
            }.padding()
        }
        .padding()
        .onAppear{
            Timer.scheduledTimer(withTimeInterval:5, repeats: true){
                timer in
                if self.currentIndex + 1 == self.slides.count {
                    self.currentIndex = 0
                }else{
                    self.currentIndex += 1
                }
            }
        }
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}
