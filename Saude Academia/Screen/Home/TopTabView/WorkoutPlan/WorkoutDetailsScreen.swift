//
//  WorkoutDetailsScreen.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 31/07/24.
//

import SwiftUI

struct WorkoutDetailsScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var showIntroction = false
    @State var showWeek = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HStack {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }

                    Text("Construção Muscular")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                    

                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView {
                    VStack {
                        ZStack(alignment: .bottom) {
                            Image("wp_1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: .screenWidth - 40, height: .widthPer(per: 0.5))
                                .clipped()
                            
                            HStack(spacing: 8) {
                                VStack {
                                    Text("Meta")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .maxCenter
                                    
                                    Text("Ganho Massa")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .maxCenter
                                }
                                
                                VStack {
                                    Text("Duração")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .maxCenter
                                    
                                    Text("5 Semanas")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .maxCenter
                                }
                                
                                VStack {
                                    Text("Level")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .maxCenter
                                    
                                    Text("Junior")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .maxCenter
                                }
                            }
                            .vertical8
                            .horizontal15
                            .background(Color.primaryApp)
                            .cornerRadius(25, corner: [.topLeft, .topRight])
                            .horizontal15
                        }
                        
                        Button {
                            showIntroction = true
                        } label: {
                            HStack {
                                Text("Introdução")
                                    .font(.customfont(.semiBold, fontSize: 15))
                                    .maxLeft
                                
                                Image("next")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 12, height: 12)
                            }
                        }
                        .foregroundColor(.primaryText)
                        .vertical15
                        
                        Text("Este é um guia de início rápido para iniciantes que o levará do dia 1 ao dia 60, fornecendo treinamento inicial e instruções...")
                            .font(.customfont(.regular, fontSize: 12))
                            .maxLeft
                            .bottom15
                        
                        ZStack {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: (.screenWidth - 40) * 0.3, height: 5, alignment: .leading)
                                .cornerRadius(3)
                        }
                        .frame(height: 5)
                        .maxLeft
                        .background(Color.placeholder)
                        .cornerRadius(3)
                        
                        Text("40% completo")
                            .font(.customfont(.regular, fontSize: 10))
                            .maxRight
                            .bottom15
                    }
                    .horizontal20
                    
                    LazyVStack(spacing: 15) {
                        ForEach(0 ..< 6, id: \.self) { index in
                            Button {
                                showWeek = true
                            } label: {
                                HStack {
                                    HStack(alignment: .firstTextBaseline) {
                                        Text("0\(index + 1)")
                                            .font(.customfont(.semiBold, fontSize: 17))
                                            .frame(width: 40, alignment: .center)
                                            .foregroundColor(.placeholder)
                                        
                                        VStack {
                                            Text("Semana")
                                                .font(.customfont(.semiBold, fontSize: 17))
                                                .maxLeft
                                            
                                            Text("Este é um guia rápido para iniciantes...")
                                                .font(.customfont(.semiBold, fontSize: 12))
                                                .maxLeft
                                        }
                                        .foregroundColor(.primaryText)
                                    }
                                    
                                    Image("next")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                }
                            }
                            .all15
                            .background(Color.txtBG)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color.board, lineWidth: 1))
                        }
                    }
                    .horizontal20
                    .bottomWithSafe
                }
            }
            
        }
        .bgNavLink(content: WorkoutIntroductionScreen(), isAction: $showIntroction)
        .bgNavLink(content: WorkoutWeekDetailScreen(), isAction: $showWeek)
        .navHide
    }
}

#Preview {
    WorkoutDetailsScreen()
}
