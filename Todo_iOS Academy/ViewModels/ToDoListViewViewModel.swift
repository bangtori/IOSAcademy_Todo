//
//  ToDoListViewViewModel.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel:ObservableObject{
    @Published var showNewItemView = false
    
    private let userId:String
    init(userId : String){
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id : Item id delete
    func delete(id:String){
        let db = Firestore.firestore()
        db.collection("user")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
