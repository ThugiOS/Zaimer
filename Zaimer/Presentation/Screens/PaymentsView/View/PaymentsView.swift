//
//  PaymentsView.swift
//  Zaimer
//
//  Created by Никитин Артем on 12.01.26.
//

import SwiftUI

struct PaymentsView: View {
    var body: some View {
        ZStack(alignment: .top) {
            HeaderView(page: HeaderViewModel.init(totalPrice: "2 938",
                                                  title: "Платежей",
                                                  date: "19 сентября",
                                                  pageType: .payList)) {
                print("Show calrndar")
            }
                .zIndex(1)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    DebtCard()
                    DebtCard()
                    DebtCard()
                    DebtCard()
                }
                .padding(.top, 130)
                .padding(.bottom, 90)
            }
        }
        .padding(.horizontal, 21)
        .background(.mainBlack)
    }
}


#Preview {
    MainTabView()
}
