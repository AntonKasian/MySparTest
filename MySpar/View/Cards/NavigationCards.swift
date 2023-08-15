//
//  NavigationCards.swift
//  MySpar
//
//  Created by Anton on 15.08.23.
//

import SwiftUI

struct NavigationCards: View {
    var body: some View {
        Button {
            print("Navigation pressed")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 130, height: 150)
                    .foregroundColor(Color(.systemGray5))
                
                VStack(alignment: .leading) {
                    Text("Абонемент на кофе")
                        .foregroundColor(.black)
                        .font(.system(size: 18))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(width: 100)
                .padding(.bottom, 70)
            }
        }
    }
}

struct NavigationCards_Previews: PreviewProvider {
    static var previews: some View {
        NavigationCards()
    }
}
