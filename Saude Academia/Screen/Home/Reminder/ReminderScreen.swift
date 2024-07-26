import SwiftUI

struct ReminderScreen: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Lembrete")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ZStack(alignment: .bottomTrailing) {
                    
                    ScrollView {
                        LazyVStack(spacing: 15) {
                            ForEach(0 ..< 10, id: \.self) { index in
                                VStack(spacing: 0) {
                                    HStack {
                                        Text("Lembrete de Treino")
                                            .font(.customfont(.semiBold, fontSize: 15))
                                            .maxLeft
                                        
                                        Toggle(isOn: .constant(true), label: {
                                            
                                        })
                                    }
                                    
                                    Text("06 : 00 AM")
                                        .font(.customfont(.medium, fontSize: 15))
                                        .maxLeft
                                    
                                    HStack {
                                        Text("Repetir")
                                            .font(.customfont(.regular, fontSize: 13))
                                            .foregroundColor(.primaryApp)
                                        
                                        Text("-")
                                            .font(.customfont(.regular, fontSize: 13))
                                            .foregroundColor(.primaryApp)
                                        
                                        Text("Seg, Qua, Qui")
                                            .font(.customfont(.regular, fontSize: 13))
                                            .foregroundColor(.primaryApp)
                                            .maxLeft
                                        
                                        Button(action: {}, label: {
                                            Image("delete")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 25, height: 25)
                                        })
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
                    
                    Button(action: {}, label: {
                        Image("add_big")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    })
                    .horizontal20
                    .bottomWithSafe
                }
            }
        }
        .navHide
    }
}

#Preview {
    ReminderScreen()
}
