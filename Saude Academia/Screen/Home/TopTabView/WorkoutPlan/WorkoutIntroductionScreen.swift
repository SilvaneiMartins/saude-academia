//
//  WorkoutIntroducationScreen.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 31/07/24.
//

import SwiftUI

struct WorkoutIntroductionScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }

                    Text("Instrodução")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView {
                    LazyVStack(spacing: 25) {
                        VStack(spacing: 15) {
                            Text("Conclua o Programa para Iniciantes")
                                .font(.customfont(.semiBold, fontSize: 15))
                                .maxLeft
                            
                            Text("Descrição")
                                .font(.customfont(.medium, fontSize: 15))
                                .maxLeft
                            
                            Text("Este é um guia de início rápido para iniciantes que o levará do dia 1 ao dia 60, fornecendo treinamento inicial e instruções...")
                                .font(.customfont(.regular, fontSize: 12))
                                .maxLeft
                        }
                        
                        VStack(spacing: 15) {
                            Text("Duração")
                                .font(.customfont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                            Text("5 Semanas")
                                .font(.customfont(.semiBold, fontSize: 14))
                                .maxLeft
                           
                        }
                        
                        VStack(spacing: 15) {
                            Text("Meta")
                                .font(.customfont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                            Text("Ganha de Massa Muscular")
                                .font(.customfont(.semiBold, fontSize: 14))
                                .maxLeft
                           
                        }
                        
                        VStack(spacing: 15) {
                            Text("Nível de treinamento")
                                .font(.customfont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                            Text("Junior")
                                .font(.customfont(.semiBold, fontSize: 14))
                                .maxLeft
                           
                        }
                        
                        
                        VStack(spacing: 15) {
                            Text("Dias por semana")
                                .font(.customfont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                            Text("4 dias")
                                .font(.customfont(.semiBold, fontSize: 14))
                                .maxLeft
                           
                        }
                        
                        VStack(spacing: 15) {
                            Text("Gênero alvo")
                                .font(.customfont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                            Text("Homem e mulher")
                                .font(.customfont(.semiBold, fontSize: 14))
                                .maxLeft
                           
                        }
                        
                    }
                    .horizontal15
                    .all15
                    .bottomWithSafe
                }
            }
        }
        .navHide
    }
}

#Preview {
    WorkoutIntroductionScreen()
}
