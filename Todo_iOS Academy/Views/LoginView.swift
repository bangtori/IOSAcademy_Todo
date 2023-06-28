//
//  LoginView.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, backgroundColor: .pink)
                
                //Login Form
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                        
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)

                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    
                    TLButton(title: "Log in", backgroundColor: .blue){
                        //Attempt log in
                        viewModel.login()
                    }
                    .padding(.vertical)
                }
                .offset(y : -50)
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
