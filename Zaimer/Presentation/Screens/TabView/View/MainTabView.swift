//
//  MainTabView.swift
//  Zaimer
//
//  Created by Никитин Артем on 30.12.25.
//


import SwiftUI
import Foundation

enum TabPage: Hashable, CaseIterable {
    case main
    case payList
}


struct MainTabView: View {
    
    @State var selectedTab: TabPage = .main
    
    init() {
        UITabBar.appearance().isHidden = true // hide default tabbar
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                ContentView()
                    .tag(TabPage.main)
                PaymentsView()
                    .tag(TabPage.payList)
            }
            HStack {
                Spacer()

                TabItem(image: "house",
                        text: "main",
                        pageType: .main,
                        isSelected: $selectedTab)
                
                Spacer()
                Spacer()
            
                TabItem(image: "map",
                        text: "pay",
                        pageType: .payList,
                        isSelected: $selectedTab)
                
                Spacer()
            } 
            .frame(width: 200, height: 75, alignment: .center)
            .background(.black).opacity(0.8)
            .clipShape(.capsule)
        }
    }
}

#Preview {
    MainTabView()
}


struct TabItem: View {
    var image: String
    var text: String
    var pageType: TabPage
    
    @Binding var isSelected: TabPage
    
    var body: some View {
        Button {
            isSelected = pageType
        } label: {
            VStack {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 33)
                Text(text)
                    .font(.custom(MonoNovaFont.main.rawValue, size: 20))
            }
            .foregroundColor(pageType == isSelected ? .mainTiffany : .mainTiffany.opacity(0.5))
        }
    }
}
