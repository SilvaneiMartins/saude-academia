import SwiftUI

struct WorkoutPlanTabScreen: View {
    @State var mArr = ["wp_1", "wp_2"]
    @State var gArr = ["wp_3", "wp_4"]
    
    @State var showFind = false
    @State var showCreate = false
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 15) {
                    IconTitleSubtitleButton(icon: "search_circle", title: "Encontre um plano de treino", subtitle: "Plano de treino perfeito que atende sua meta de condicionamento físico") {
                        showFind = true
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Meus Planos")
                            .font(.customfont(.semiBold, fontSize: 14))
                            .maxCenter
                    }
                    .foregroundColor(.primaryText)
                    .frame(height: 50)
                    .background(Color.primaryApp)
                    .cornerRadius(15)
                    .horizontal20

                    
                    IconTitleSubtitleButton(icon: "add_big", title: "Criar um novo plano", subtitle: "Planos de treino personalizados de acordo com sua necessidade") {
                        showCreate = true
                    }
                    
                    
                    VStack(spacing: 8) {
                        SectionMoreButton(title: "Construção Muscular") {
                            
                        }
                        
                        VStack(spacing: 15) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 15) {
                                    ForEach(0 ..< mArr.count, id: \.self) {index in
                                        Image(mArr[index])
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: .widthPer(per: 0.8), height: .widthPer(per: 0.4))
                                            .cornerRadius(15)
                                    }
                                }
                                .horizontal20
                            }
                        }
                        
                        SectionMoreButton(title: "Ganhar Massa Muscular") {
                            
                        }
                        
                        VStack(spacing: 15) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 15) {
                                    ForEach(0 ..< gArr.count, id: \.self) {index in
                                        Image(gArr[index])
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: .widthPer(per: 0.8), height: .widthPer(per: 0.4))
                                            .cornerRadius(15)
                                    }
                                }
                                .horizontal20
                            }
                        }
                    }
                }
                .vertical15
                .bottomWithSafe
            }
        }
        .bgNavLink(content: FindWorkoutPlanScreen(), isAction: $showFind)
        .bgNavLink(content: CreatePlanScreen(), isAction: $showCreate)
    }
}

#Preview {
    WorkoutPlanTabScreen()
}
