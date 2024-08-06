//
//  SelectHeightScreen.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 06/08/24.
//

import SwiftUI

struct SelectHeightScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var selectFt = 1
    @State var selectInch = 1
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill( Color.black.opacity(0.7) )
            
            
            VStack{
                
                Spacer()
                
                VStack(spacing: 15) {
                        
                    Text("Selecione sua altura")
                        .font(.customfont(.semiBold, fontSize: 15))
                        .maxCenter
                        .top8
                    
                    HStack(spacing: 15){
                        Picker("", selection: $selectFt ) {
                            ForEach(1 ... 2, id: \.self) {
                                number in
                                
                                Text("\(number) m")
                            }
                        }
                        .pickerStyle(.wheel)
                        
                        Picker("", selection: $selectInch ) {
                            ForEach(1 ... 99, id: \.self) {
                                number in
                                
                                Text("\(number) cm")
                            }
                        }
                        .pickerStyle(.wheel)
                        
                    }
                   
                    
                    
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
    SelectHeightScreen()
}
