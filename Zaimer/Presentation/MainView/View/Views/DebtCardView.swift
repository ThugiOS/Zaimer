//
//  DebtCardView.swift
//  Zaimer
//
//  Created by Никитин Артем on 9.01.26.
//

import SwiftUI

struct DebtCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Долг по кредитке")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 24))
                        .foregroundStyle(.white)
                    HStack {
                        Text("22 323 /")
                            .font(.custom(MonoNovaFont.main.rawValue, size: 16))
                            .foregroundStyle(.white)
                        Text("остаток")
                            .font(.custom(MonoNovaFont.main.rawValue, size: 16))
                            .foregroundStyle(.white)
                    }
                }
                Text("webwebcbwe ewrferfer ferferferf ferferfffdfdfdfdfdfdfdfd")
                    .font(.custom(MonoNovaFont.main.rawValue, size: 16))
                    .foregroundStyle(.white).opacity(0.7)
            }
            HStack {
                HStack(spacing: 1) {
                    Text("324$")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 16))
                        .foregroundStyle(.white)
                    Text(" / month")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 16))
                        .foregroundStyle(.white)
                }
                Spacer()
                HStack(spacing: 1) {
                    Text("Оплатить до:")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 16))
                        .foregroundStyle(.white).opacity(0.9)
                    Text("19.04")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 16))
                        .foregroundStyle(.white)
                }
            }
            Spacer()
            HStack {
                CardButton()
                CardButton()
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 25)
        .background(.mainRed)
        .cornerRadius(19)
        
    }
}


#Preview {
    ContentView()
}
