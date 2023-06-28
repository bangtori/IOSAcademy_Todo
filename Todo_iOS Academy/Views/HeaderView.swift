//
//  HeaderView.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import SwiftUI

struct HeaderView: View {
    let title:String
    let subtitle:String
    let angle:Double
    let backgroundColor : Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
                
            VStack{
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .bold()
                Text(subtitle)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y:-150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, backgroundColor: .blue)
    }
}
