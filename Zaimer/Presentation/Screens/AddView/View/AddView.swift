//
//  AddView.swift
//  Zaimer
//
//  Created by Никитин Артем on 26.01.26.
//

import SwiftUI

struct AddView: View {
    @State var nameText: String = " "
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 30) {
                VStack(spacing: 30) {
                    Text("Text")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 28))
                        .foregroundStyle(.mainDirtyFFFF)
                    
                    HStack(spacing: 20) {
                        ChoiseButton(text: "Каждый месяц",
                                     textSize: 18,
                                     isSelected: true)
                        
                        ChoiseButton(text: "Разовый",
                                     textSize: 18,
                                     isSelected: false)
                    }
                    
                }
                HStack(spacing: 4) {
                    Button {
                        //
                    } label: {
                        Text("21")
                            .underline()
                            .font(.custom(MonoNovaFont.main.rawValue, size: 20))
                            .foregroundStyle(.white)
                    }
                    
                    Text("числа")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                        .foregroundStyle(.mainDirtyFFFF)

                }
            }
            
            VStack(alignment: .leading, spacing: 12) {
                FiieldView(placeholder: "Название платежа", text: $nameText)
            }
            
            Spacer()
            CardButton()
        }
        .padding(40)
        .background(.mainBlack)
    }
}

#Preview {
    AddView()
}

struct FiieldView: View {
    var placeholder: String
    @Binding var text: String
    var isTextField: Bool = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(placeholder)
                .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                .foregroundStyle(.mainRed)
            if isTextField {
                TextField.init("", text: $text)
            } else {
                TextEditor(text: $text)
            }
            
        }
        
    }
}
