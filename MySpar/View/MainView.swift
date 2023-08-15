//
//  ContentView.swift
//  MySpar
//
//  Created by Anton on 14.08.23.
//

import SwiftUI

struct MainView: View {
    
    @State var searchText = ""
    
    let storiesTitles = [
            "Привелегии «Мой SPAR»",
            "Мы в соцсетях",
            "Дегустация в SPAR",
            "3 рецепта коктейлей",
            "Новинки недели"
        ]
    
    let navigationTitles = [
        "Абонемент на кофе",
        "Мои скидки",
        "Карта в подарок",
        "Доставка за один час",
        "Бесплатная доставка"
    ]
    
    var body: some View {
        VStack {
            searchBar
            Divider()
                .padding()
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(storiesTitles, id: \.self) {title in
                            StoryCardView(title: title)
                        }
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<10) {_ in
                            DiscountCards()
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 5)
                BonusCards()
                    .padding(.bottom, 10)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(navigationTitles, id: \.self) {title in
                            NavigationCards(title: title)
                        }
                    }
                }
                .padding(.horizontal, 20)
                
                Text("Рекомендуем")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.vertical)
                    .font(.system(size: 25).bold())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<10) {_ in
                            RecomendCards()
                                .padding(.vertical, 5)
                        }
                    }
                    .padding(.horizontal, 20)
                }
                
                Text("Сладкое настроение")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .padding(.vertical)
                    .font(.system(size: 25).bold())
                
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
                HStack {
                    Image("pin")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 10)
                    TextField("Москва, Москва и Московская область", text: $searchText)
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
            .padding(.trailing, 10)
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
