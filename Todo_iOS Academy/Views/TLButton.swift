//
//  TLButton.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import SwiftUI

struct TLButton: View {
    let title:String
    let backgroundColor : Color
    let action : () -> Void
    var body: some View {
        Button{
            //Action
            action()
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value", backgroundColor: .pink) {
            //action
        }
    }
}
