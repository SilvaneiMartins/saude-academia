import SwiftUI

struct SettingsScreen: View {
    
    @State var showProfile = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Configuração")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView {
                    VStack(spacing: 15) {
                        SettingRow(title: "Perfil do Usuário", icon: "user_placeholder", isIconCircle: true) {
                            showProfile = true
                        }
                        
                        SettingRow(title: "Opção de Idioma", icon: "language", value: "PT-BR") {
                            
                        }
                        
                        SettingRow(title: "Dados de Saúde", icon: "data") {
                            
                        }
                        
                        SettingRow(title: "Notificações", icon: "notification", value: "On") {
                            
                        }
                        
                        SettingRow(title: "Indique um Amigo", icon: "share") {
                            
                        }
                        
                        SettingRow(title: "Feedback", icon: "feedback") {
                            
                        }
                        
                        SettingRow(title: "Nos avalie", icon: "rating") {
                            
                        }
                        
                        SettingRow(title: "Sair do Aplicativo", icon: "logout") {
                            
                        }
                    }
                    .horizontal15
                    .bottomWithSafe
                }
            }
        }
        .bgNavLink(content: ProfileScreen(), isAction: $showProfile)
        .navHide
    }
}

#Preview {
    NavigationView {
        SettingsScreen()
    }
}
