//
//  CreatePlanScreen.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 29/07/24.
//

import SwiftUI

struct CreatePlanScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var txtPlanName = ""
    @State var selectGoal: NSDictionary?
    @State var selectDuration: NSDictionary?
    @State var selectLevel: NSDictionary?
    
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

                    Text("Adicionar Plano")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                VStack(spacing: 10) {
                    
                    TextField("Nome do plano", text: $txtPlanName)
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color.board, lineWidth: 1))
                    
                    RoundDropDown(select: $selectGoal, placeholder: "Metas", listArr: [["name": "Meta Junior"], ["name": "Meta Pleno"], ["name": "Meta Senior"]])
                    
                    RoundDropDown(select: $selectDuration, placeholder: "Duração", listArr: [["name": "30 minutos"], ["name": "1 hora"], ["name": "1/30 horas"], ["name": "2 Horas"]])
                    
                    RoundDropDown(select: $selectLevel, placeholder: "Escolha um Nível", listArr: [["name": "Nível Iniciante"], ["name": "Nível Intermediário"], ["name": "Nível Avançado"]])
                        .bottom15
                    
                    Button {
                        
                    } label: {
                        Text("Adicionar")
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
    CreatePlanScreen()
}
