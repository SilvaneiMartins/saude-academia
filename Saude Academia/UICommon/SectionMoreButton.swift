//
//  SectionMoreButton.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 29/07/24.
//

import SwiftUI

struct SectionMoreButton: View {
    
    @State var title = ""
    var action: (() -> ())?
    
    var body: some View {
        HStack {
            Text(title)
                .font(.customfont(.semiBold, fontSize: 15))
                .maxLeft
                .foregroundColor(.primaryText)
            
            Button {
                action?()
            } label: {
                Text("Mais")
                    .font(.customfont(.regular, fontSize: 12))
            }
            .foregroundColor(Color.primaryApp)
        }
        .horizontal20
    }
}

#Preview {
    SectionMoreButton()
}
