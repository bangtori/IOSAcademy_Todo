//
//  RegisterView.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        //header
        VStack{
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, backgroundColor: .orange)
            
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Create Account", backgroundColor: .green) {
                    //Attempt register
                }
                .padding(.vertical)
            }
            .offset(y: -50)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
