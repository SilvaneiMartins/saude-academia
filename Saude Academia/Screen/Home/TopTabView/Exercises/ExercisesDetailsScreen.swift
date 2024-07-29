import SwiftUI

struct ExercisesDetailsScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var imageArr = [ "ed_1", "ed_2"]
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HStack {
                    HStack {
                        Button {
                            mode.wrappedValue.dismiss()
                        } label: {
                            Image("back_white")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }

                        Text("Supino")
                            .font(.customfont(.regular, fontSize: 18))
                            .maxLeft
                    }
                    .foregroundColor(Color.white)
                    .horizontal20
                    .vertical15
                    .topWithSafe
                    .background(Color.secondaryApp)
                }
                
                ScrollView {
                    VStack(spacing: 15) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 15) {
                                ForEach(0 ..< imageArr.count, id: \.self) {index in
                                    Image(imageArr[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: .widthPer(per: 0.8), height: .widthPer(per: 0.4))
                                        .cornerRadius(15)
                                }
                            }
                        }
                        .all15
                    }
                    
                    VStack(spacing: 15) {
                        
                        Text("Supino")
                            .font(.customfont(.semiBold, fontSize: 15))
                            .maxLeft
                        
                        Text("1) Deite-se de costas em um banco plano. Usando uma pegada de largura média, levante a barra do suporte e segure-a reta sobre você com os braços travados. Esta será sua posição inicial.")
                            .font(.customfont(.regular, fontSize: 13))
                            .maxLeft
                        
                        Text("2) Da posição inicial, inspire e comece a descer lentamente até que a barra toque o meio do seu peito.")
                            .font(.customfont(.regular, fontSize: 13))
                            .maxLeft
                        
                        Text("3) Após uma breve pausa, empurre a barra de volta à posição inicial enquanto expira.")
                            .font(.customfont(.regular, fontSize: 13))
                            .maxLeft
                            .bottom15
                        
                        Text("Equipamento necessário")
                            .font(.customfont(.semiBold, fontSize: 15))
                            .maxLeft
                        
                        Text("Barra, Banco, Placa, Trava")
                            .font(.customfont(.regular, fontSize: 13))
                            .maxLeft
                            .bottom15
                        
                        Text("Músculo alvo")
                            .font(.customfont(.semiBold, fontSize: 15))
                            .maxLeft
                        
                        Text("Peito, Ombro, Tríceps")
                            .font(.customfont(.regular, fontSize: 13))
                            .maxLeft
                            .bottom15
                        
                    }
                    .horizontal15
                }
            }
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            Image("fav_color")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image("share")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                        })
                    }
                    .horizontal20
                    .vertical15
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(radius: 2)
                }
            }
            .padding(20)
        }
        .navHide
    }
}

#Preview {
    ExercisesDetailsScreen()
}
