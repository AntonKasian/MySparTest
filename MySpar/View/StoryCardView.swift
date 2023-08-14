//
//  StoryCardView.swift
//  MySpar
//
//  Created by Anton on 14.08.23.
//

import SwiftUI

struct StoryCardView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 70, height: 70)
                .foregroundColor(Color(.systemGray5))
                .overlay(
                    Circle()
                        .stroke(Color.green, lineWidth: 2)
                )
            Button {
                print("Button pressed")
            } label: {
                Image(systemName: "tree")
                    .foregroundColor(.green)
                    .font(.system(size: 30))
            }
        }
    }
}



struct StoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        StoryCardView()
    }
}
