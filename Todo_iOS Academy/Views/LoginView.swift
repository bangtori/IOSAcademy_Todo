//
//  LoginView.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, backgroundColor: .pink)
                //Login Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button{
                        //Attempt log in
                    }label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Log in")
                                .foregroundColor(.white)
                                .bold()
                        }
                        
                    }
                    .padding()
                    .offset(y:-50)
                }
                //Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account", destination : RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
