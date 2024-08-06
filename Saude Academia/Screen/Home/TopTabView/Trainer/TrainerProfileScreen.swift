//
//  TrainerProfileScreen.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 06/08/24.
//

import SwiftUI

struct TrainerProfileScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var isTrainer = true
    
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
                    
                    Text("Perfil")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView {
                    LazyVStack(spacing: 15) {
                        HStack(spacing: 15) {
                            Image("t_profile")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(15)
                            
                            VStack(spacing: 4) {
                                
                                Text("Silvanei Martins")
                                    .font(.customfont(.semiBold, fontSize: 18))
                                    .maxLeft
                                
                                Text("Especialização em Fitness")
                                    .font(.customfont(.light, fontSize: 12))
                                    .maxLeft
                                
                                
                                HStack(spacing: 15) {
                                    
                                    Button {
                                        
                                    } label: {
                                        
                                        Text("Seguir")
                                            .font(.customfont(.semiBold, fontSize: 15))
                                            .maxCenter
                                        
                                    }
                                    .foregroundColor(.primaryText)
                                    .padding(8)
                                    .background( Color.primaryApp )
                                    .cornerRadius(10)
                                    
                                    Button {
                                        
                                    } label: {
                                        
                                        Text("Contato")
                                            .font(.customfont(.semiBold, fontSize: 15))
                                            .maxCenter
                                        
                                    }
                                    .foregroundColor(.primaryText)
                                    .padding(8)
                                    .background( Color.primaryApp )
                                    .cornerRadius(10)

                                    
                                }
                                
                                HStack(spacing: 8) {
                                        
                                    Image("location")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                    Text("Brasil")
                                        .font(.customfont(.light, fontSize: 12))
                                        .maxLeft
                                    
                                }
                            }
                        }
                        
                        
                        HStack(spacing: 15) {
                            
                            VStack{
                                Text("4/5")
                                    .font(.customfont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Avaliações")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                            
                            Divider()
                            
                            VStack{
                                Text("78")
                                    .font(.customfont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Seguindo")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                            
                            Divider()
                            
                            VStack{
                                Text("5645")
                                    .font(.customfont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Seguidores")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                            
                        }
                        
                        HStack{
                            
                            Button {
                                
                            } label: {
                                Image("color_fb")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                                    
                            }
                            .maxCenter
                            
                            
                            Button {
                                
                            } label: {
                                Image("tw")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                                    
                            }
                            .maxCenter
                            
                            
                            
                            Button {
                                
                            } label: {
                                Image("in")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                                    
                            }
                            .maxCenter
                            
                            
                            Button {
                                
                            } label: {
                                Image("yt")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                                    
                            }
                            .maxCenter

                            
                        }
                        
                        Divider()
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Certificações")
                                    .font(.customfont(.bold, fontSize: 14))
                                    .maxCenter
                                
                                Text("Certificação de instrutor avançado ISSA")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background( Color.txtBG )
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke( Color.board, lineWidth: 1 ) )
                        
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Prêmios")
                                    .font(.customfont(.bold, fontSize: 14))
                                    .maxCenter
                                
                                Text("O melhor em construção muscular")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background( Color.txtBG )
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke( Color.board, lineWidth: 1 ) )
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Publicar artigos")
                                    .font(.customfont(.bold, fontSize: 14))
                                    .maxCenter
                                
                                Text("Por que a respiração é necessária durante a ginástica")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background( Color.txtBG )
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke( Color.board, lineWidth: 1 ) )
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Conferências e exposições em que participou")
                                    .font(.customfont(.bold, fontSize: 14))
                                    .maxCenter
                                
                                Text("ISSA 2024")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background( Color.txtBG )
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke( Color.board, lineWidth: 1 ) )
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text( isTrainer ? "Cliente de treinamento pessoal e feedback" : "Opinião")
                                    .font(.customfont(.bold, fontSize: 14))
                                    .maxCenter
                                
                                Text("Rigoroso, calmo por natureza")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background( Color.txtBG )
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke( Color.board, lineWidth: 1 ) )

                        
                    }
                    .foregroundColor(.primaryText)
                    .horizontal20
                    .vertical15
                }
            }
        }
        .navHide
    }
}

#Preview {
    TrainerProfileScreen()
}
