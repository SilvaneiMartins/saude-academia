//
//  RoundDropDown.swift
//  Saude Academia
//
//  Created by Silvanei  Martins on 29/07/24.
//

import SwiftUI

struct RoundDropDown: View {
    
    @Binding var select: NSDictionary?
    @State var placeholder = ""
    @State var listArr: [NSDictionary] = []
    var action: ((NSDictionary) -> ())?
    
    var body: some View {
        Menu {
            ForEach(0 ..< listArr.count, id: \.self) {index in
                
                let obj = listArr[index]
                
                Button {
                    $select.wrappedValue = obj
                    action?(obj)
                } label: {
                    Text(obj["name"] as? String ?? "")
                        .font(.customfont(.regular, fontSize: 15))
                        .maxCenter
                }

            }
        } label: {
            Text($select.wrappedValue?.value(forKey: "name") as? String ?? placeholder)
                .font(.customfont(.regular, fontSize: 15))
                .maxLeft
            
            Image("down")
                .resizable()
                .scaledToFit()
                .frame(width: 15, height: 15)
        }
        .horizontal20
        .frame(height: 50)
        .foregroundColor($select.wrappedValue == nil ? .placeholder : .primaryText)
        .background(Color.txtBG)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10.0).stroke(Color.board, lineWidth: 1)
        )
    }
}

#Preview {
    RoundDropDown(select: .constant(nil), placeholder: "Escolher", listArr: [ ["Name": "Meta 1"], ["Name": "Meta 2"], ["Name": "Meta 3"]])
}
