//
//  DetailsView.swift
//  Zaimer
//
//  Created by Никитин Артем on 15.01.26.
//

import SwiftUI

struct DetailsView: View {
    @State var isNotificationEnabled: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            header
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("$1299")
                            .font(.custom(MonoNovaFont.main.rawValue, size: 28))
                            .foregroundStyle(.mainDirtyFFFF)
                        Text("iPhone credit")
                            .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                            .foregroundStyle(.gray)
                    }
                    .padding(.vertical, 20)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        HStack(spacing: 20) {
                            TagInfoView(text: "2500BYN")
                            TagInfoView(text: "$1250")
                        }
                        
                        Text("some text ome textome kds cks dkc skd c sdc jkds kc kjsd jksdjk jk sj cdjc kjs dcj sdjk cjk ds ckj sdc jsd kc ksjd ckj sd cjs dcj jsd c sdjc  text ome text ome text ome text")
                            .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                            .foregroundStyle(.gray)
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Divider()
                            .background(.mainDirtyFFFF)
                        
                        HStack {
                            Text("Ближайший платеж")
                                .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                                .foregroundStyle(.gray)
                            Spacer()
                            HStack(spacing: 2) {
                                Text("оплачен:")
                                    .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                                    .foregroundStyle(.gray)
                                Text("01.07")
                                    .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                                    .foregroundStyle(.white)
                            }
                        }
                        Divider()
                            .background(.mainDirtyFFFF)
                        
                        HStack {
                            Text("Уведомления о платеже ")
                                .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                                .foregroundStyle(.gray)
                            Spacer()
                            //toggle
                            RadioButton(isOn: $isNotificationEnabled)
                        }
                    }
                    
                }
            }
  
            VStack(spacing: 20) {
                Spacer()
                
                Button {
                    print("Закрыть досрочно")
                } label: {
                    Text("Закрыть досрочно")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                        .foregroundStyle(.white)
                }
                .padding(.horizontal, 50)
                .padding(.top, 12)
                .padding(.bottom, 10)
                .overlay {
                    Capsule()
                        .stroke(.mainRed,lineWidth: 5)
                }
                
                Button {
                    print("Удалить последний платеж")
                } label: {
                    Text("Удалить последний платеж")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                        .foregroundStyle(.mainTiffany)
                }
                .padding(.horizontal, 50)
                .padding(.top, 12)
                .padding(.bottom, 10)
                .overlay {
                    Capsule()
                        .stroke(.mainTiffany,lineWidth: 5)
                }
            }
        }
        .padding(.horizontal, 20)
        .background(.mainBlack)

    }
}


#Preview {
    DetailsView()
}


extension DetailsView {
    var header: some View {
        HStack {
            Button {
                //
            } label: {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .foregroundStyle(.mainTiffany)
                
            }
            
            Spacer()
            
            Text("Payment Details")
                .font(.custom(MonoNovaFont.main.rawValue, size: 24))
                .foregroundStyle(.mainDirtyFFFF)
            
            Spacer()
            
            Button {
                //
            } label: {
                Image(systemName: "trash.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 27)
                    .foregroundStyle(.mainTiffany)
            }
        }
    }
}


struct TagInfoView: View {
    var text: String = ""
    var body: some View {
        Text(text)
            .font(.custom(MonoNovaFont.main.rawValue, size: 24))
            .foregroundStyle(.white)
            .padding(.horizontal, 20)
            .padding(.top, 10)
            .padding(.bottom, 8)
            .overlay {
                Capsule()
                    .stroke(.mainTiffany,lineWidth: 2)
            }
    }
}

struct RadioButton: View {
    @Binding var isOn: Bool
    var body: some View {
        Circle()
            .fill(isOn ? Color.mainTiffany : Color.gray)
            .frame(width: 25, height: 25 )
            .overlay {
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                    .foregroundStyle(.mainDirtyFFFF)
            }
            .onTapGesture {
                isOn.toggle()
            }
    }
}
