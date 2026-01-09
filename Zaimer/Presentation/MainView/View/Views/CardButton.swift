//
//  CardButton.swift
//  Zaimer
//
//  Created by Никитин Артем on 9.01.26.
//

import SwiftUI

struct CardButton: View {
    var body: some View {
        Button {
            //
        } label: {
            Text("Pay")
                .font(.custom(MonoNovaFont.main.rawValue, size: 16))
                .foregroundStyle(.white)
                .padding(.top, 13)
                .padding(.bottom, 13)
                .frame(maxWidth: .infinity)
                .background(Color(.systemBlue))
                .clipped()
        }
    }
}

#Preview {
    ContentView()
}
