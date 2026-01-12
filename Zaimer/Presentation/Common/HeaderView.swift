//
//  HeaderView.swift
//  Zaimer
//
//  Created by Никитин Артем on 5.01.26.
//
import SwiftUI

struct HeaderViewModel {
    var totalPrice: String
    var title: String
    var date: String
    var pageType: TabPage

}

struct HeaderView: View {
    var page: HeaderViewModel
    var action: () -> Void
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {            
            HStack {
                Text("\(page.totalPrice) BYN")
                    .font(.custom(MonoNovaFont.main.rawValue, size: 44))
                    .foregroundStyle(.mainDirtyFFFF)
                    .offset(y: -2)
                
                Spacer()
                
                if page.pageType == .main {
                    Button {
                        action()
                    } label: {
                        ZStack {
                            Circle()
                                .fill(.mainRed)
                                .frame(width: 44)
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                                .foregroundStyle(.mainBlack)
                        }
                    }
                }
            }
            
            VStack(alignment: .leading, spacing: 33) {
                HStack {
                    Text(page.title)
                        .font(.custom(MonoNovaFont.main.rawValue, size: 44))
                    
                    Spacer()
                    
                    if page.pageType == .payList {
                        Button {
                            action()
                        } label: {
                            Image(systemName: "calendar.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .padding(.top, 1)
                        }
                    }
                }
                Text(page.date)
                    .font(.custom(MonoNovaFont.main.rawValue, size: 16))
            }
            .foregroundStyle(.mainRed)
        }
        .padding(.bottom, 20)
    }
}

#Preview {
    MainTabView()
}
