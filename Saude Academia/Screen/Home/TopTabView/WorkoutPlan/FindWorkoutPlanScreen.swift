import SwiftUI

struct FindWorkoutPlanScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var selectGoal: NSDictionary?
    @State var selectLevel: NSDictionary?
    @State var selectWeek: NSDictionary?
    @State var selectDayPerWeek: NSDictionary?
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }

                    Text("Criar um Plano")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                VStack(spacing: 10) {
                    RoundDropDown(select: $selectGoal, placeholder: "Escolha uma Meta", listArr: [["name": "Meta Junior"], ["name": "Meta Pleno"], ["name": "Meta Senior"]])
                    
                    RoundDropDown(select: $selectLevel, placeholder: "Escolha um Nível", listArr: [["name": "Nível Iniciante"], ["name": "Nível Intermediário"], ["name": "Nível Avançado"]])
                    
                    RoundDropDown(select: $selectWeek, placeholder: "Número de Semanas", listArr: [["name": "1 semana"], ["name": "2 semanas"], ["name": "3 Semanas"], ["name": "3 Semanas"]])
                    
                    RoundDropDown(select: $selectDayPerWeek, placeholder: "Dias da Semanas", listArr: [["name": "1 dia"], ["name": "3 dias"], ["name": "5 dias"], ["name": "6 dias"]])
                        .bottom15
                    
                    Button {
                        
                    } label: {
                        Text("Encontre um Pano de Treino")
                            .font(.customfont(.semiBold, fontSize: 14))
                            .maxCenter
                    }
                    .foregroundColor(.primaryText)
                    .frame(height: 50)
                    .background(Color.primaryApp)
                    .cornerRadius(25)
                    .horizontal20

                }
                .horizontal8
                .all15
                
                Spacer()
            }
        }
        .navHide
    }
}

#Preview {
    FindWorkoutPlanScreen()
}
