//
//  DiscountCards.swift
//  MySpar
//
//  Created by Anton on 15.08.23.
//

import SwiftUI

struct DiscountCards: View {
    var body: some View {
            Button {
                print("Discount pressed")
            } label: {
                // К сожалению я не смог найти картинку нужных размеров
                Image("DiscountImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 330, height: 170)
                    .cornerRadius(20)
            }
        
    }
}

struct DiscountCards_Previews: PreviewProvider {
    static var previews: some View {
        DiscountCards()
    }
}
