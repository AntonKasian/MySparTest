//
//  StoryCardView.swift
//  MySpar
//
//  Created by Anton on 14.08.23.
//

import SwiftUI

struct StoryCardView: View {
    var body: some View {
        
        VStack {
            ZStack {
                Circle()
                    .frame(width: 70, height: 70)
                    .foregroundColor(Color(.systemGray5))
                    .overlay(
                        Circle()
                            .stroke(Color.green, lineWidth: 2)
                    )
                Button {
                    print("Stories pressed")
                } label: {
                    Image(systemName: "tree")
                        .foregroundColor(.green)
                        .font(.system(size: 30))
                }
            }
            Text("Привелегии «Мой SPAR»")
                .font(.system(size: 14))
                .frame(width: 90)
                .lineLimit(2)
                .multilineTextAlignment(.center)
        }
        
    }
}




struct StoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        StoryCardView()
    }
}
