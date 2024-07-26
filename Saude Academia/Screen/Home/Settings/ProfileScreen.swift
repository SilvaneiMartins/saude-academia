import SwiftUI

struct ProfileScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image("back")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(8)
                    })
                    
                    Text("Perfil")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.primaryText)
                .horizontal20
                .topWithSafe
                
                ScrollView {
                    VStack(spacing: 15) {
                        
                        HStack(spacing: 20) {
                            Image("user_placeholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(15)
                            
                            VStack(spacing: 8) {
                                Text("Silvanei Martins")
                                    .font(.customfont(.semiBold, fontSize: 15))
                                    .maxLeft
                                
                                Text("00 0.0000-0000")
                                    .font(.customfont(.semiBold, fontSize: 15))
                                    .maxLeft
                                
                                Text("oi@silvaneimartins.com.br")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .accentColor(.primaryText)
                                    .maxLeft
                                
                                HStack {
                                    Image("location")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                    Text("Brasil")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .accentColor(.primaryText)
                                        .maxLeft
                                }
                            }
                        }
                        
                        SettingRow(title: "Tarefas Completas", icon: "completed_tasks", value: "3") {
                            
                        }
                        
                        SettingRow(title: "Level", icon: "level", value: "Principiante") {
                            
                        }
                        
                        SettingRow(title: "Metas", icon: "goal", value: "Ganho de massa") {
                            
                        }
                        
                        SettingRow(title: "Desafios", icon: "challanges", value: "4") {
                            
                        }
                        
                        
                        
                        SettingRow(title: "Planos", icon: "calendar", value: "2") {
                            
                        }
                        
                        SettingRow(title: "Dispositivo de fitness", icon: "smartwatch", value: "Eu") {
                            
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
        .navHide
    }
}

#Preview {
    ProfileScreen()
}
