import SwiftUI

struct OTPScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var showName = false
    @State var txtOTP = "1234"
    
    @State private var timeRemaining = 30
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Digite o código que foi enviado para seu número de telefone")
                        .multilineTextAlignment(.center)
                        .maxCenter
                        .foregroundColor(.primaryText)
                        .top15
                    
                    ZStack {
                        
                        HStack(spacing: 20) {
                            Spacer()
                            
                            let otpCode = txtOTP.map{String($0)}
                            
                            ForEach(0 ..< 4) { index in
                                VStack {
                                    if (index < otpCode.count) {
                                        Text(otpCode[index])
                                            .font(.customfont(.bold, fontSize: 25))
                                            .maxCenter
                                    } else {
                                        Text("")
                                            .font(.customfont(.bold, fontSize: 25))
                                            .maxCenter
                                    }
                                }
                                .frame(width: 60, height: 60)
                                .foregroundColor(.primaryText)
                                .background(Color.txtBG)
                                .overlay(RoundedRectangle(cornerRadius: 30.0).stroke(Color.board, lineWidth: 1))
                            }
                            
                            Spacer()
                        }
                        
                        TextField("", text: $txtOTP)
                            .keyboardType(.phonePad)
                            .frame(height: 50)
                            .horizontal20
                            .foregroundColor(.clear)
                            .accentColor(.clear)
                    }
                    
                    Button {
                        showName = true
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
                    
                    HStack {
                        Button(action: {
                            mode.wrappedValue.dismiss()
                        }, label: {
                            Text("Alterar número")
                                .font(.customfont(.regular, fontSize: 12))
                                .foregroundColor(.secondaryText)
                        })

                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Reenviar (\( timeRemaining ))")
                                .font(.customfont(.regular, fontSize: 12))
                                .foregroundColor(.secondaryText)
                                .onReceive(timer, perform: { time in
                                    if (timeRemaining > 0) {
                                        timeRemaining -= 1
                                    }
                                })
                        })

                    }
                }
                .horizontal20
                .topWithSafe
                .bottomWithSafe
            }
        }
        .bgNavLink(content: NameScreen(), isAction: $showName)
        .navHide
    }
}

#Preview {
    OTPScreen()
}
