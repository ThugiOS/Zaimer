//
//  HeaderView.swift
//  Zaimer
//
//  Created by Никитин Артем on 5.01.26.
//
import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("231 321")
                .font(.custom(MonoNovaFont.main.rawValue, size: 44))
                .foregroundStyle(.mainDirtyFFFF)
                .offset(y: -2)
            Spacer()
            Button {
                //action
                print("wcwec")
            } label: {
                ZStack {
                    Circle()
                        .fill(.mainYellow)
                        .frame(width: 44)
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundStyle(.mainBlack)
                }
            }

        }
        
        VStack(alignment: .leading, spacing: 33) {
            Text("Сумма долга")
                .font(.custom(MonoNovaFont.main.rawValue, size: 44))
            Text("5 января")
                .font(.custom(MonoNovaFont.main.rawValue, size: 16))
        }
        .foregroundStyle(.mainYellow)
    }
}
