import SwiftUI

struct ExercisesTabScreen: View {
    
    private var colum = [
        GridItem(.flexible(), spacing: 15),
        GridItem(.flexible(), spacing: 15),
    ]
    
    @State var listArr = [
        [
            "title": "Chest",
            "subtitle": "16 exercícios",
            "image": "ex_1",
        ],
        [
            "title": "Back",
            "subtitle": "16 exercícios",
            "image": "ex_2",
        ],
        [
            "title": "Biceps",
            "subtitle": "16 exercícios",
            "image": "ex_3",
        ],
        [
            "title": "Triceps",
            "subtitle": "16 exercícios",
            "image": "ex_4",
        ],
        [
            "title": "Shoulders",
            "subtitle": "16 exercícios",
            "image": "ex_5",
        ],
        [
            "title": "Abs",
            "subtitle": "16 exercícios",
            "image": "ex_6",
        ],
        [
            "title": "Legs",
            "subtitle": "16 exercícios",
            "image": "ex_7",
        ],
        [
            "title": "Chest",
            "subtitle": "16 exercícios",
            "image": "ex_8",
        ],
    ]
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: colum, spacing: 15,content: {
                    ForEach(0 ..< listArr.count, id: \.self) { index in
                        
                        let obj = listArr[index]
                        
                        ZStack ( alignment: .bottomTrailing) {
                            Image(obj["image"] ?? "")
                                .resizable()
                                .aspectRatio(1, contentMode: .fill)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                            VStack {
                                Text(obj["title"] ?? "")
                                    .font(.customfont(.semiBold, fontSize: 15))
                                    .maxCenter
                                
                                Text(obj["subtitle"] ?? "")
                                    .font(.customfont(.regular, fontSize: 10))
                                    .maxCenter
                            }
                            .foregroundColor(Color.primaryText)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color.primaryApp)
                            .cornerRadius(15, corner: [.bottomLeft])
                            .cornerRadius(30, corner: [.topRight])
                            .padding(.trailing, 20)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(1, contentMode: .fill)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 2)
                    }
                })
                .all15
            }
        }
    }
}

#Preview {
    ExercisesTabScreen()
}
