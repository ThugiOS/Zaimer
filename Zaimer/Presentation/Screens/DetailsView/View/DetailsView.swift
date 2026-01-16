//
//  DetailsView.swift
//  Zaimer
//
//  Created by Никитин Артем on 15.01.26.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            header
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("$1299")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 28))
                        .foregroundStyle(.mainDirtyFFFF)
                    Text("iPhone credit")
                        .font(.custom(MonoNovaFont.main.rawValue, size: 18))
                        .foregroundStyle(.gray)
                }
                .padding(.vertical , 40)
            }
            HStack(spacing: 20) {
                TagInfoView(text: "23e23")
                TagInfoView(text: "ddwd")
            }
            Spacer()
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
