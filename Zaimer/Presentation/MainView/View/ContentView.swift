//
//  ContentView.swift
//  Zaimer
//
//  Created by Никитин Артем on 28.12.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            HeaderView()
                .zIndex(1)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 100) {
                    MainContentView()
                    
                    VStack(alignment: .leading, spacing: 20) {
                        DebtCard()
                        DebtCard()
                        DebtCard()
                        DebtCard()
                    }
                }
                .padding(.top, 150)
            }
        }
        .padding(.horizontal, 20)
        .background(.mainBlack)
    }
}

#Preview {
    ContentView()
}
