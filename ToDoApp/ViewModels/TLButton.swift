//
//  TLButtonView.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action:() -> Void
    
    var body: some View {
        Button{
            action()
        }label:{
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(background)
                Text(title)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    TLButton(
        title:"Value",
        background:.pink){
    }
}
