//
//  MainContentView.swift
//  Zaimer
//
//  Created by Никитин Артем on 6.01.26.
//
import SwiftUI


struct MainContentView: View {
    var body: some View {
        VStack(alignment: .leading  ) {
            HStack {
                Text("Долги")
                    .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                    .foregroundStyle(.gray)
                Spacer()
                HStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        Text("месяц")
                            .font(.custom(MonoNovaFont.main.rawValue, size: 16))
                            .foregroundStyle(.white)
                    }
                    Button {
                        
                    } label: {
                        Text("разовый")
                            .font(.custom(MonoNovaFont.main.rawValue, size: 16))
                            .foregroundStyle(.white).opacity(0.2)
                    }

                }
            }
            HStack(spacing: 0) {
                Text("$ 300 /")
                    .font(.custom(MonoNovaFont.main.rawValue, size: 15))
                    .foregroundStyle(.gray)
                Text("Every month")
                    .font(.custom(MonoNovaFont.main.rawValue, size: 15))
                    .foregroundStyle(.gray)
            }
        }

        
    }
}

#Preview {
    ContentView()
}
