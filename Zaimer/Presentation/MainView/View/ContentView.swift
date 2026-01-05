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
            VStack(alignment: .leading) {
                HeaderView()
            }
            .zIndex(1 )
            ScrollView {
                
            }
        }
        .padding(.horizontal, 20)
        .background(.mainBlack)
    }
}

#Preview {
    ContentView()
}
