//
//  ChoiseButton.swift
//  Zaimer
//
//  Created by Никитин Артем on 21.01.26.
//

import SwiftUI

struct ChoiseButton: View {
    var text: String
//    var frameColor: Color
//    var textColor: Color
    var textSize: Int
    var isSelected: Bool
    var action: (() -> Void)?
    
    var body: some View {
        Button {
            action?()
        } label: {
            Text(text)
                .font(.custom(MonoNovaFont.main.rawValue, size: CGFloat(textSize)))
                .padding(.top, 13)
                .padding(.bottom, 17)
                .frame(maxWidth: .infinity)
                .foregroundStyle(isSelected ? .mainDirtyFFFF : .mainTiffany)
                .background(isSelected ? .mainTiffany : .mainBlack)
                .clipShape(Capsule())
                .overlay {
                    Capsule()
                        .stroke(.mainTiffany, lineWidth: 2)
                }
        }
    }
}
