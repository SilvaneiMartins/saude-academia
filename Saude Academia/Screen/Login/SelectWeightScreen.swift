//
//  SelectWidthScreen.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 06/08/24.
//

import SwiftUI

struct SelectWeightScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var select = 1
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill( Color.black.opacity(0.7) )
            
            
            VStack{
                
                Spacer()
                
                VStack(spacing: 15) {
                        
                    Text("Selecione seu peso")
                        .font(.customfont(.semiBold, fontSize: 15))
                        .maxCenter
                        .top8
                    
                    
                    Picker("", selection: $select ) {
                        ForEach(20 ... 150, id: \.self) {
                            number in
                            
                            Text("\(number) Kg")
                        }
                    }
                    .pickerStyle(.wheel)
                    
                    
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Text("Feito")
                            .font(.customfont(.bold, fontSize: 15))
                            .maxCenter
                    })
                    .foregroundColor(.primaryApp)
                    
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .all15
                .background( Color.white )
                .cornerRadius(25)
                .shadow(radius: 10)
                .frame(width: .widthPer(per: 0.7))
                
                Spacer()
            }
        }
        .navHide
    }
}

#Preview {
    SelectWeightScreen()
}
