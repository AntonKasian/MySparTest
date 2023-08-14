//
//  TabView.swift
//  MySpar
//
//  Created by Anton on 14.08.23.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
            UITabBar.appearance().backgroundColor = UIColor.systemGray5
        }
    
    var body: some View {
        
            TabView {
                MainView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Главная")
                    }
                
                MainView()
                    .tabItem {
                        Image(systemName: "square.on.square")
                        Text("Каталог")
                    }
                
                MainView()
                    .tabItem {
                        Image(systemName: "basket")
                        Text("Корзина")
                    }
                    
                
                MainView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
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



