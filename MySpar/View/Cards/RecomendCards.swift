//
//  RecomendCards.swift
//  MySpar
//
//  Created by Anton on 15.08.23.
//

import SwiftUI

struct RecomendCards: View {
    
    @State private var discountIsVisible = false
    
    
    var body: some View {
        Button {
            print("Recommend pressed")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 170, height: 230)
                    .foregroundColor(Color(.white))
                
                Text("Удар по ценам")
                    .foregroundColor(.white)
                    .font(.system(size: 12))
                    .frame(width: 110, height: 10, alignment: .leading)
                    .padding(.leading, 20)
                    .background(
                        CurvedShape(color: .red, topLeftRadius: 100, topRightRadius: 5, bottomLeftRadius: 0, bottomRightRadius: 5)
                            .frame(width: 110,height: 20)
                    )
                    .padding(.bottom, 210)
                    .padding(.trailing, 60)
                Spacer()
                
                VStack(alignment: .leading) {
                    Image("cheese")
                        .resizable()
                        .frame(width: 130, height: 130, alignment: .center)
                        .padding(.top)
                        .padding(.horizontal)
                    Spacer()
                    HStack {
                        VStack {
                            Text("259.90 р/шт")
                                .foregroundColor(.black)
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
            }
        }
        .shadow(radius: 5)
    }
}



struct RecomendCards_Previews: PreviewProvider {
    static var previews: some View {
        RecomendCards()
    }
}
