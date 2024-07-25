import SwiftUI

struct NameScreen: View {
    @State var showGoal = false
    @State var txtName = ""
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Digite seu de nome")
                        .font(.customfont(.semiBold, fontSize: 18))
                        .top15
                    
                    TextField("ou seja. Seu nome", text: $txtName)
                        .keyboardType(.phonePad)
                        .frame(height: 50)
                        .horizontal20
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay( RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                        .bottom15
                    
                    Button {
                        showGoal = true
                    } label: {
                        Text("Próximo")
                            .font(.customfont(.semiBold, fontSize: 14))
                            .horizontal15
                    }
                    .foregroundColor(.btnPrimaryText)
                    .frame(height: 50)
                    .maxCenter
                    .background(Color.primaryApp)
                    .cornerRadius(25)
                }
                .horizontal20
                .topWithSafe
                .bottomWithSafe
            }
        }
        .bgNavLink(content: GoalScreen(), isAction: $showGoal)
        .navHide
    }
}

#Preview {
    NameScreen()
}
