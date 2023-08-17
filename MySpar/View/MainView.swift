//
//  ContentView.swift
//  MySpar
//
//  Created by Anton on 14.08.23.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewModel = MainViewModel()
    
    var body: some View {
        VStack {
            
            // MARK: - Search Bar
            
            searchBar
            Divider()
                .padding(.top, 8)
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: - Story cards
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(viewModel.storiesTitles, id: \.self) {title in
                            StoryCardView(title: title)
                        }
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                }
                
                // MARK: - Discount cards
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<10) {_ in
                            DiscountCards()
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 5)
                
                // MARK: - Bonus card
                
                BonusCards()
                    .padding(.bottom, 10)
                
                // MARK: - Navigation cards
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(viewModel.navigationTitles, id: \.self) {title in
                            NavigationCards(title: title)
                        }
                    }
                }
                .padding(.horizontal, 20)
                
                // MARK: - Recommend text
                
                Text("Рекомендуем")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.vertical)
                    .font(.system(size: 25).bold())
                
                // MARK: - Recommend cards
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<10) {_ in
                            RecomendCards()
                                .padding(.vertical, 5)
                        }
                    }
                    .padding(.horizontal, 20)
                }
                
                // MARK: - Sweet text
                
                Text("Сладкое настроение")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.vertical)
                    .font(.system(size: 25).bold())
                
                // MARK: - Sweet cards
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<10) {_ in
                            SweetCards()
                                .padding(.vertical, 5)
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .padding(.bottom)
            }
        }
    }
    
    private var searchBar: some View {
        HStack {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 1)
                HStack(spacing: 0) {
                    Button {
                        print("Pin tapped")
                    } label: {
                        Image("pin")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.leading, 10)
                    }
                    
                    Text("Москва, Москва и Московская область")
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                        .padding(.leading, 8)
                }
            }
            .padding(.leading, 10)
            .frame(height: 40)
            
            Button {
                //
            } label: {
                Image(systemName: "line.3.horizontal")
            }
            .padding(.trailing, 20)
            .foregroundColor(.green)
            .font(.system(size: 30))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
