import SwiftUI

struct SettingRow: View {
    
    @State var title = "Configuração"
    @State var icon = ""
    @State var value = ""
    @State var isIconCircle = false
    var action: (() -> ())?
    
    var body: some View {
        Button(action: {
            action?()
        }, label: {
            HStack(spacing: 20) {
                
                if (isIconCircle) {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                        .cornerRadius(11)
                } else {
                    Image(icon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22, height: 22)
                        .cornerRadius(11)
                }
                
                Text(title)
                    .font(.customfont(.semiBold, fontSize: 15))
                    .maxLeft
                
                Text(value)
                    .font(.customfont(.semiBold, fontSize: 15))
            }
        })
        .horizontal20
        .foregroundColor(.primaryText)
        .frame(height: 50)
        .background(Color.txtBG)
        .cornerRadius(5)
    }
}

#Preview {
    SettingRow()
}
