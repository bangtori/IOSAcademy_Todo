//
//  LoginViewViewModel.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import Foundation
import Firebase

class LoginViewViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    init() {}
    
    func login(){
        guard validate() else{
            return
        }
        // Try log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    private func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }
        
        //email@aaa.com -> 양식 체크
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter vaild email"
            return false
        }
        return true
    }
}
