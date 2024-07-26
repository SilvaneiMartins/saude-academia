import SwiftUI

struct NotifcationScreen: View {
    
    @State var listArr = [
        "Novos exercícios e atualizações de planos",
        "Realiza uma consultar com nosso nutricionista",
        "Seu número de celular está atualizado?",
        "Dicas de saúde - por que a realização de exercícios é importante",
        "Basta completar o exercício de flexões",
    ]
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Notificação")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView {
                    LazyVStack(spacing: 15) {
                        ForEach(0 ..< listArr.count, id: \.self) { index in
                            VStack(spacing: 0) {
                                HStack {
                                    Text(listArr[index])
                                        .font(.customfont(.semiBold, fontSize: 15))
                                        .maxLeft
                                }
                            }
                            .all15
                            .background(Color.txtBG)
                            .cornerRadius(15)
                            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.board, lineWidth: 1))
                        }
                    }
                }
                .horizontal20
                .vertical15
                .bottomWithSafe
            }
        }
        .navHide
    }
}

#Preview {
    NotifcationScreen()
}
