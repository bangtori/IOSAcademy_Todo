//
//  ToDoListViewViewModel.swift
//  Todo_iOS Academy
//
//  Created by 방유빈 on 2023/06/28.
//

import Foundation

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel:ObservableObject{
    @Published var showNewItemView = false
    init(){}
}
