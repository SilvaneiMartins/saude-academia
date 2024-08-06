//
//  SelectAgeScreen.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 06/08/24.
//

import SwiftUI

struct SelectAgeScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var select = 1
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill( Color.black.opacity(0.7) )
            
            
            VStack{
                
                Spacer()
                
                VStack(spacing: 15) {
                        
                    Text("Selecione sua idade")
                        .font(.customfont(.semiBold, fontSize: 15))
                        .maxCenter
                        .top8
                    
                    
                    Picker("", selection: $select ) {
                        ForEach(1 ... 120, id: \.self) {
                            number in
                            
                            Text("\(number)")
                                .tag("\(number)")
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
    SelectAgeScreen()
}
