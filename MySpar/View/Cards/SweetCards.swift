//
//  SweetCards.swift
//  MySpar
//
//  Created by Anton on 15.08.23.
//

import SwiftUI

struct SweetCards: View {
    
    @State private var discountIsVisible = false
    
    var body: some View {
        Button {
            print("Sweet pressed")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 170, height: 230)
                    .foregroundColor(Color(.white))
                
                VStack(alignment: .leading) {
                    Image("cake")
                        .resizable()
                        .frame(width: 130, height: 130, alignment: .center)
                        .padding(.horizontal)
                    Spacer()
                    HStack {
                        VStack {
                            Text("259.90 р/шт")
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            if discountIsVisible {
                                Text("390.90 р/шт")
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .overlay(
                                        GeometryReader { proxy in
                                            Rectangle()
                                                .frame(height: 1)
                                                .foregroundColor(.gray)
                                                .position(x: proxy.size.width / 2, y: proxy.size.height / 2)
                                        }
                                    )
                            }
                        }
                        Button {
                            print("Add to basket pressed")
                            discountIsVisible.toggle()
                        } label: {
                            ZStack {
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.green)
                                Image(systemName: "basket.fill")
                                    .foregroundColor(.white)
                                    
                            }
                            .padding(.leading)
                        }

                    }
                    .padding(.top)
                }
                .frame(width: 160, height: 190)
                //.background(Color.red.opacity(0.2))
            }
        }
        .shadow(radius: 5)
    }
}

struct SweetCards_Previews: PreviewProvider {
    static var previews: some View {
        SweetCards()
    }
}
