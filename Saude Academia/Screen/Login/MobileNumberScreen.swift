import SwiftUI

struct MobileNumberScreen: View {
    
    @State var showOTP = false
    @State var txtMobile = ""
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Digite número de telefone")
                        .font(.customfont(.semiBold, fontSize: 18))
                        .top15
                    
                    TextField("ou seja. 00 0.0000-0000", text: $txtMobile)
                        .keyboardType(.phonePad)
                        .frame(height: 50)
                        .horizontal20
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay( RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                        .bottom15
                    
                    Button {
                        showOTP = true
                    } label: {
                        Text("Verificar")
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
        .bgNavLink(content: OTPScreen(), isAction: $showOTP)
        .navHide
    }
}

#Preview {
    MobileNumberScreen()
}
