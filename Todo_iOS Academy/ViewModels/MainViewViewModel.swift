//
//  MainViewViewModel.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import FirebaseAuth
import Foundation


class MainViewViewModel : ObservableObject{
    @Published var currentUserId : String = ""
    private var handler : AuthStateDidChangeListenerHandle?
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignIn:Bool{
        return Auth.auth().currentUser != nil
    }
}
