//
//  BonusCards.swift
//  MySpar
//
//  Created by Anton on 15.08.23.
//

import SwiftUI

struct BonusCards: View {
    var body: some View {
            Button {
                print("Bonus pressed")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 355, height: 120)
                        .foregroundColor(Color(.systemGray5))
                    
                    HStack(alignment: .top) {
                        Text("0")
                            .font(.system(size: 40).bold())
                            .foregroundColor(.black)
                        Text("бонусов")
                            .font(.system(size: 20).bold())
                            .foregroundColor(.black)
                            .padding(.top)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 40)
                    .padding(.bottom, 40)
                }
              
            }
        
    }
}

struct BonusCards_Previews: PreviewProvider {
    static var previews: some View {
        BonusCards()
    }
}
