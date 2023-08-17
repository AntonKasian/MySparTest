//
//  TabView.swift
//  MySpar
//
//  Created by Anton on 14.08.23.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray6
    }
    
    var body: some View {
        
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Главная")
                }
            
            Text("Каталог")
                .tabItem {
                    Image(systemName: "square.on.square")
                    Text("Каталог")
                }
            
            Text("Корзина")
                .tabItem {
                    Image(systemName: "basket")
                    Text("Корзина")
                }
            
            Text("Профиль")
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
        }
        .accentColor(.green)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}



