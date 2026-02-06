//
//  AddView.swift
//  Zaimer
//
//  Created by Никитин Артем on 26.01.26.
//

import SwiftUI

enum PayType {
    case month
    case onetime
}

struct AddView: View {
    @State var nameText: String = ""
    @State var isNotificationEnabled: Bool = false
    @State var payType: PayType = .month
    @State var date: Date = .now
    @State var isShowCalendar: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading, spacing: 30) {
                //title & buttons
                VStack(spacing: 30) {
                    Text("Text some text ")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 28))
                        .foregroundStyle(.mainDirtyFFFF)
                    
                    HStack(spacing: 20) {
                        ChoiseButton(text: "Каждый месяц",
                                     textSize: 18,
                                     isSelected: payType == .month) {
                            payType = .month
                        }
                        
                        ChoiseButton(text: "Разовый",
                                     textSize: 18,
                                     isSelected: payType == .onetime) {
                            payType = .onetime
                        }
                    }
                }
                //date
                HStack(spacing: 7) {
                    switch payType {
                    case .month:
                        Button {
                            isShowCalendar.toggle()
                        } label: {
                            Text("21")
                                .underline()
                                .font(.custom(MonoNovaFont.main.rawValue, size: 20))
                                .foregroundStyle(.mainTiffany)
                        }
                        
                        Text("числа")
                            .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                            .foregroundStyle(.mainDirtyFFFF)
                        
                    case .onetime:
                        Text("До")
                            .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                            .foregroundStyle(.mainDirtyFFFF)
                        Button {
                            isShowCalendar.toggle()
                        } label: {
                            Text("21 апреля 2026")
                                .underline()
                                .font(.custom(MonoNovaFont.main.rawValue, size: 20))
                                .foregroundStyle(.mainTiffany)
                        }
                    }
                }
            }
            
            // fields
            VStack(alignment: .leading, spacing: 14) {
                FiieldView(text: $nameText, placeholder: "Название платежа")
                
                switch payType {
                case .month:
                    HStack(spacing: 10) {
                        FiieldView(text: $nameText, placeholder: "Общая сумма")
                        FiieldView(text: $nameText, placeholder: "Ежемесячный платеж")
                    }
                case .onetime:
                    FiieldView(text: $nameText, placeholder: "Общая сумма")
                }
                
                
                FiieldView(text: $nameText, placeholder: "Описание", isTextField: false)
            }
            
            //notification
            HStack {
                Text("Уведомления о платеже ")
                    .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                    .foregroundStyle(.gray)
                Spacer()
                //toggle
                RadioButton(isOn: $isNotificationEnabled)
            }
            
            Spacer()
            CardButton()
        }
        .padding(20)
        .background(.mainBlack)
    }
}

#Preview {
    AddView()
}

struct FiieldView: View {
    @Binding var text: String
    var placeholder: String
    var isTextField: Bool = true
    
    var body: some View {
        VStack(alignment: .center) {
            Text(placeholder)
                .font(.custom(MonoNovaFont.main.rawValue, size: 15))
                .foregroundStyle(.mainDirtyFFFF)
            
            if isTextField {
                TextField.init("", text: $text)
                    .frame(height: 50 )
                    .padding(.horizontal, 12 )
                    .background(.mainDirtyFFFF)
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                            .stroke(.mainTiffany, lineWidth: 2)
                    }
            } else {
                TextEditor(text: $text)
                    .frame(height: 150 )
                    .padding(.horizontal, 12 )
                    .background(.mainDirtyFFFF)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.mainTiffany, lineWidth: 2)
                    }
            }
            
        }
    }
}
