//
//  RegisterView.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        //header
        VStack{
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, backgroundColor: .orange)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
