//
//  MainTabView.swift
//  Zaimer
//
//  Created by Никитин Артем on 30.12.25.
//


import SwiftUI


struct MainTabView: View {
    
    init() {
        UITabBar.appearance().isHidden = true // hide default tabbar
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                ContentView()
            }
            HStack {
                
            }
        }
    }
}
