import SwiftUI

struct HealthTipTabScreen: View {
    
    @State var listArr = [
        [
            "title": "Uma dieta sem exercícios é inútil",
            "subtitle": "O treinamento intervalado é uma forma de exercício em que você. Alternativa entre ou mais exercícios",
            "image": "home_1",
        ],
        [
            "title": "Alho tão fresco e doce quanto o hálito do bebê",
            "subtitle": "O alho é uma planta da família da cebola que é cultivada alternadamente ou com mais exercícios.",
            "image": "home_2",
        ],
        [
            "title": "Alho tão fresco e doce quanto o hálito do bebê",
            "subtitle": "O alho é uma planta da família da cebola que é cultivada alternadamente ou com mais exercícios.",
            "image": "home_3",
        ]
    ]
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVStack(spacing: 15) {
                    ForEach(0 ..< listArr.count, id: \.self) { index in
                        let obj = listArr[index]
                        
                        Button {
                            
                        } label: {
                            ZStack(alignment: .top) {
                                Image(obj["image"] ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: .screenWidth - 30, height: .widthPer(per: 0.5) - 15)
                                    .padding(.top, 60)
                                
                                VStack {
                                    Text(obj["title"] ?? "")
                                        .multilineTextAlignment(.leading)
                                        .font(.customfont(.medium, fontSize: 14))
                                        .maxLeft
                                    
                                    Text(obj["subtitle"] ?? "")
                                        .multilineTextAlignment(.leading)
                                        .font(.customfont(.light, fontSize: 10))
                                        .maxLeft
                                }
                                .all15
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                            }
                        }
                        .maxLeft
                        .foregroundColor(.primaryText)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)

                    }
                }
                .all15
            }
        }
    }
}

#Preview {
    HealthTipTabScreen()
}
