//
//  WorkoutDayExercisesScreen.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 31/07/24.
//

import SwiftUI

struct WorkoutDayExercisesScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var listArr = [
        [ "name": "Supino",
          "sets": "3",
          "reps": "12 - 10 - 0",
          "rest": "30 Sec",
          "image": "d1",
          "is_complete": false,
        ],[
          "name": "Supino",
          "sets": "3",
          "reps": "12 - 10 - 0",
          "rest": "30 Sec",
          "image": "d2",
          "is_complete": true,
        ],[
          "name": "Supino",
          "sets": "3",
          "reps": "12 - 10 - 0",
          "rest": "30 Sec",
          "image": "d3",
          "is_complete": false,
        ],[
          "name": "Supino",
          "sets": "3",
          "reps": "12 - 10 - 0",
          "rest": "30 Sec",
          "image": "d4",
          "is_complete": false,
        ],[
          "name": "Supino",
          "sets": "3",
          "reps": "12 - 10 - 0",
          "rest": "30 Sec",
          "image": "d5",
          "is_complete": false,
        ],
      ]
    @State var showDetal = false
    
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    })
                    
                    Text("1 Semana - Dia 1")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                    
                    Button(action: {
                       
                    }, label: {
                        Text("Reiniciar")
                            .font(.customfont(.regular, fontSize: 14))
                            .maxLeft
                    })
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView{
                        
                    LazyVStack(spacing: 15){
                        
                        ForEach(0 ..< listArr.count, id:\.self) {
                            index in
                            
                            let obj = listArr[index]
                            let isComplete = obj["is_complete"] as? Bool ?? false
                            
                            Button {
                                showDetal = true
                            } label: {
                                
                                VStack{
                                    
                                    HStack(spacing: 8){
                                        
                                        
                                        Image(obj["image"] as? String ?? "" )
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 70, height: 70)
                                            .cornerRadius(10)
                                        
                                        VStack(spacing: 4) {
                                            
                                            Text( obj["name"] as? String ?? "" )
                                                .font(.customfont(.regular, fontSize: 14))
                                                .maxLeft
                                            
                                            HStack{
                                                Text( "Conjunto" )
                                                    .font(.customfont(.semiBold, fontSize: 12))
                                                    .frame(width: 150, alignment: .leading)
                                                
                                                
                                                Text( obj["sets"] as? String ?? "" )
                                                    .font(.customfont(.regular, fontSize: 10))
                                                
                                                    .maxLeft
                                            }
                                            
                                            HStack{
                                                Text( "Representante" )
                                                    .font(.customfont(.semiBold, fontSize: 12))
                                                    .frame(width: 150, alignment: .leading)
                                                
                                                
                                                Text( obj["reps"] as? String ?? "" )
                                                    .font(.customfont(.regular, fontSize: 10))
                                                    .maxLeft
                                            }
                                            
                                            
                                            HStack{
                                                Text( "Descansar" )
                                                    .font(.customfont(.semiBold, fontSize: 12))
                                                    .frame(width: 150, alignment: .leading)
                                                
                                                Text( obj["rest"] as? String ?? "" )
                                                    .font(.customfont(.regular, fontSize: 10))
                                                
                                                    .maxLeft
                                            }
                                        }
                                        .foregroundColor(.primaryText)
                                        .padding(.leading, 25)
                                        
                                        Image("next")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12, height: 12)
                                        
                                        
                                    }
                                    .vertical8
                                    .horizontal20
                                    
                                    Divider()
                                    
                                    HStack{
                                        
                                        Image( isComplete ? "check_tick" : "uncheck" )
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 20, height: 20)
                                        
                                        Text( "Marcar como concluído" )
                                            .font(.customfont(.regular, fontSize: 17))
                                            .foregroundColor(isComplete ? .green  : .placeholder )
                                        
                                    }
                                    .maxCenter
                                    .horizontal15
                                   
                                    .bottom8
                                }
                                    
                                }
                                .background(Color.txtBG)
                                .cornerRadius(10)
                                .overlay( RoundedRectangle(cornerRadius: 10).stroke(Color.board, lineWidth: 1) )
                                
                        }
                        
                    }
                    .all15
                    .bottomWithSafe
                    
                }
            }
        }
        .bgNavLink(content: ExercisesDetailsScreen(), isAction: $showDetal)
        .navHide
    }
}

#Preview {
    WorkoutDayExercisesScreen()
}
