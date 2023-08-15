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
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 330, height: 170)
                    .foregroundColor(Color(.systemGray5))
            }
        
    }
}

struct DiscountCards_Previews: PreviewProvider {
    static var previews: some View {
        DiscountCards()
    }
}
