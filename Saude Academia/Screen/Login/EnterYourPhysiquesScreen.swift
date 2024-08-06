//
//  EnterYourPhysiquesScreen.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 06/08/24.
//

import SwiftUI

struct EnterYourPhysiquesScreen: View {
    
    @State var showAge = false
    @State var showHeight = false
    @State var showWeight = false
    @State var showLevel = false
    @State var showHome = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 25) {
                
                HStack{
                    Text("Insira seu físico")
                        .font(.customfont(.semiBold, fontSize: 17))
                }
                .top15
                .horizontal20
                .topWithSafe
                
                Button {
                    showAge = true
                } label: {
                    HStack{
                        Text("Idade")
                            .font(.customfont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        
                        Text("45 anos")
                            .font(.customfont(.regular, fontSize: 16))
                            .maxCenter
                        
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background( Color.btnBG )
                .cornerRadius(25)
                
                
                Button {
                    showHeight = true
                } label: {
                    HStack{
                        Text("Altura")
                            .font(.customfont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        
                        Text("1.80 metros")
                            .font(.customfont(.regular, fontSize: 16))
                            .maxCenter
                        
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background( Color.btnBG )
                .cornerRadius(25)
                
                Button {
                    showWeight = true
                } label: {
                    HStack{
                        Text("Peso")
                            .font(.customfont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        
                        Text("85 Kg")
                            .font(.customfont(.regular, fontSize: 16))
                            .maxCenter
                        
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background( Color.btnBG )
                .cornerRadius(25)
                
                Button {
                    showLevel = true
                } label: {
                    HStack{
                        Text("Nível")
                            .font(.customfont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        
                        Text("Junior")
                            .font(.customfont(.regular, fontSize: 16))
                            .maxCenter
                        
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background( Color.btnBG )
                .cornerRadius(25)
                
                
                
                Button {
                    showHome = true
                } label: {
                    Text("Confirmar Detalhe")
                        .font(.customfont(.semiBold, fontSize: 14))
                      
                }
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background( Color.primaryApp )
                .cornerRadius(25)
                .top15
                
                Spacer()
            }
            .padding(.horizontal, 50)
        }
        .fullScreenCover(isPresented: $showAge, content: {
            SelectAgeScreen()
                .background( BackgroundCleanerView() )
        })
        
        .fullScreenCover(isPresented: $showHeight, content: {
            SelectHeightScreen()
                .background( BackgroundCleanerView() )
        })
        
        .fullScreenCover(isPresented: $showWeight, content: {
            SelectWeightScreen()
                .background( BackgroundCleanerView() )
        })
        
        .fullScreenCover(isPresented: $showLevel, content: {
            SelectLevelScreen()
                .background( BackgroundCleanerView() )
        })
        .bgNavLink(content: TopTabViewScreen(), isAction: $showHome)
        .navHide
    }
}

#Preview {
    EnterYourPhysiquesScreen()
}
