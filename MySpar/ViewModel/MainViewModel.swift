//
//  MainViewModel.swift
//  MySpar
//
//  Created by Anton on 14.08.23.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var storiesTitles = [
        "Привелегии «Мой SPAR»",
        "Мы в соцсетях",
        "Дегустация в SPAR",
        "3 рецепта коктейлей",
        "Новинки недели"
    ]
    
    @Published var navigationTitles = [
        "Абонемент на кофе",
        "Мои скидки",
        "Карта в подарок",
        "Доставка за один час",
        "Бесплатная доставка"
    ]
}
